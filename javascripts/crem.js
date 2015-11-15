function yescreditmodul(data, merchantid, orderid) {

    var summa = 0;
    for (i = 0; i < data.length; i++) {
        var j = 0;
        for (var key in data[i]) {
            j++;
            if (j == 3) summa += parseFloat(data[i][key]);
        }
    }

    var temp = JSON.stringify(data);
    temp = temp.replace(/\\"/g, '"');
    if (temp.substr(0, 1) == '"') temp = temp.substr(1);
    if (temp.substr(-1, 1) == '"') temp = temp.substring(0, temp.length - 1);

    args = '?SUMMA=' + summa + '&MERCHANTID=' + merchantid + '&TOVAR=' + temp + '&ORDERID=' + orderid;

    var page = 'http://yes-credit.su/crem/crem-single.html' + encodeURI(args);
    var $dialog = jQuery('<div id="Divbody" style="overflow: hidden; height: 600px;background:#F2F2F2;"></div>')
        .html('<iframe style="border: 0px; " src="' + page + '" width="100%" height="100%"></iframe>')
        .dialog({
            autoOpen: false,
            modal: true,
            height: 582,
            width: 760,
            resizable: false,
            title: "Заявка на кредит, не выходя из дома"
        });
    $dialog.dialog('open');
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(window.location.search);
    if (results == null)
        return "";
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "));
}

function sendRequest(tovar, merchantid, fio, phone, email, region, term, startperc, orderid, summtovar) {

    if (jQuery('#fio').val() == '') {
        alert("Поле (Фамилия Имя Отчество) не может быть пустым.");
        return;
    }

    if (jQuery('#phone').val() == '') {
        alert("Поле (Контактный телефон) не может быть пустым.");
        return;
    }

    if (!jQuery('#Approve').is(':checked')) {
        alert("Вы должны согласится с условиями соглашения.");
        return;
    }



    jQuery.ajax({
        url: "http://yes-credit.su/Webservices/CreditModule.asmx/RequestCreate",
        type: "POST",
        dataType: "json",
        data: '{"tovar":"' + encodeURIComponent(tovar) + '","merchantid":"' + merchantid + '","fio":"' + encodeURIComponent(fio) + '","phone":"' + phone + '","email":"' + email + '","region":"' + encodeURIComponent(region) + '","term":"' + term + '","startperc":"' + startperc +
            '","orderid":"' + orderid + '","summtovar":"' + summtovar + '"}',

        contentType: "application/json; charset=utf-8",
        success: function (msg) {

            jQuery('#thnx').css('display', 'block');

        },
        error: function (e) {
            alert("Ошибка при отправке данных. Попробуйте позднее.");
        }

    });
}

function getSocialData(id, idtype, retype, oldval) {

    jQuery.ajax({
        url: "http://yes-credit.su/Webservices/CreditModule.asmx/SocialData",
        type: "POST",
        dataType: "json",
        data: '{"id":"' + id + '","idtype":"' + idtype + '","retype":"' + retype + '"}',

        contentType: "application/json; charset=utf-8",
        success: function (msg) {
            if (retype == 1) {
                jQuery('#phone').val(msg.d);
            }
            if (retype == 2) {
                jQuery('#fio').val(msg.d);
            }
            if (retype == 3) {
                jQuery('#email').val(msg.d);
            }
        },
        error: function (e) {
            jQuery('#phone').val(oldval);
        }

    });
}

function getMerchantData(mid, summa) {

    jQuery.ajax({
        url: "http://yes-credit.su/Webservices/CreditModule.asmx/MerchantData",
        type: "POST",
        dataType: "json",
        data: '{"mid":"' + mid + '"}',

        contentType: "application/json; charset=utf-8",
        success: function (msg) {


            jQuery('#SummTovar').val(parseFloat(summa) + parseInt(msg.d, 10) * parseFloat(summa) / 100);

        },
        error: function (e) {
            jQuery('#SummTovar').val(summa);
        }

    });
}