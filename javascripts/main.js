function openDescr(html, event2) {
    document.getElementById('td_product').innerHTML = html;
    div = document.getElementById('descr_product');
    try {
        div.style.left = event2.pageX + 20;
        div.style.top = event2.pageY + document.body.scrollTop;
    } catch (e) {
        try {
            div.style.left = event.x + 20;
            div.style.top = event.y + document.body.scrollTop;
        }
        catch (e) {
            div.style.left = Event.pointerX + 20;
            div.style.top = Event.pointerY + document.body.scrollTop;
        }
    }
    div.style.display = 'block';
}
function showDescr(event2) {
    var div = document.getElementById('descr_product');
    try {
        div.style.left = event2.pageX + 20;
        div.style.top = event2.pageY + document.body.scrollTop;
    } catch (e) {
        try {
            div.style.left = event.x + 20;
            div.style.top = event.y + document.body.scrollTop;
        }
        catch (e) {
            div.style.left = Event.pointerX + 20;
            div.style.top = Event.pointerY + document.body.scrollTop;
        }
    }
}


function getCoordinates(elementeg) {
    var coordinateLeft = 0;
    var coordinateTop = 0;
    while (elementeg.offsetParent) {
        coordinateLeft += elementeg.offsetLeft;
        coordinateTop += elementeg.offsetTop;
        elementeg = elementeg.offsetParent;
    }
    return { x: coordinateLeft, y: coordinateTop }
}

function showImage(e, src, el) {
    var coordinates = getCoordinates(el);
    $('img_cont').style.border = '1px solid #ababab'
    $('img_cont').style.position = 'absolute';
    $('img_cont').style.zIndex = 5000;

    var img = $('image').firstChild;
    Element.show('image_loading');
    img.src = src;
    loaded = false;
    $('img_cont').style.top = coordinates.y + "px";
    Event.observe(img, 'load', function () {
        $('img_cont').style.left = coordinates.x - img.width - 1 + "px";
        Element.hide('image_loading');
        Element.show('image');
        loaded = true;
    }
	)
}


function hideImage() {
    Element.hide('image');
    $('img_cont').style.border = '0px';
}


function closeDescr() {
    document.getElementById('descr_product').style.display = 'none';
}
window.onresize = function () {
    resize();
}
window.onload = function () {
    resize();

    basket_moving = 0;
    basket_count = 0;
    if (this['auth'] == undefined) { auth = false; }
    if (auth) {
        $('message').style.display = 'none';
    }
}

document.onmouseup = function (e) {
    //resize();
    basket_moving = 0;
    basket_count = 0;
}

document.onmousedown = function (e) {
    //resize();
    mCur = mouseCoords(e);

    //alert("X:"+mCur.x+" - Y:"+mCur.y);
}

function ShowMail(user, domain1, domain2) {
    var email = user + '&#64;' + domain1 + '&#46;' + domain2;
    if (ShowMail.arguments[3]) name = ShowMail.arguments[3];
    else name = email;
    document.writeln('<a href="mailto:' + email + '">' + name + '</a>');
}
function hideSelect() {
    var elements = document.getElementsByTagName('select');
    for (var i in elements) {
        if (elements[i].style == undefined) continue;
        elements[i].style.visibility = 'hidden';
    }
}
function showSelect() {
    var elements = document.getElementsByTagName('select');
    for (var i in elements) {
        if (elements[i].style == undefined) continue;
        elements[i].style.visibility = 'visible';
    }
}
function resize() {
    var oStyleSheet = document.styleSheets[0];
    size = (document.body.offsetWidth - 380) * 209 / 625;
    if (size < 209) { size = 209; }
    try {
        document.getElementById('banner_logo_center').style.height = size + 'px';
    } catch (e) { }
    /*
    if (size<230){size=230;}
    for (i=0; i<oStyleSheet.rules.length; i++){
    if (oStyleSheet.rules[i].selectorText == '.ramka2'){
    oStyleSheet.rules[i].style.width = size+'px';
    break;
    }
    }
    */
}

function paramsNode(id, last) {
    if (document.getElementById('param_' + id).style.display == "none") {
        document.getElementById('param_' + id).style.display = "block";
        if (last) document.getElementById('img_' + id).src = '/images/toc_opened_' + last + '.gif';
    } else {
        document.getElementById('param_' + id).style.display = "none";
        if (last) document.getElementById('img_' + id).src = '/images/toc_closed_' + last + '.gif';
    }
}

function openCatalogNode(id) {
    document.getElementById('catalog_' + id).style.display = 'block';
    document.getElementById('url_' + id).onclick = function () {
        closeCatalogNode(this.IDN);
        return false;
    }
    for (i in catIDs) {
        if (catIDs[i] != id) {
            closeCatalogNode(catIDs[i])
        }
    }
}
function closeCatalogNode(id) {
    if (document.getElementById('catalog_' + id)) document.getElementById('catalog_' + id).style.display = 'none';
    if (document.getElementById('url_' + id)) {
        document.getElementById('url_' + id).onclick = function () {
            openCatalogNode(this.IDN);
            return false;
        }
    }
}


function openNode(id) {
    document.getElementById('node_' + id).style.display = 'block';
    var img = document.getElementById('img_' + id);
    r = img.src.lastIndexOf('closed');
    img.src = img.src.substring(0, r) + 'opened' + img.src.substring(r + 6);
    img.parentElement.onclick = function () {
        closeNode(img.id.substring(img.id.lastIndexOf('_') + 1));
    }
}

function closeNode(id) {
    document.getElementById('node_' + id).style.display = 'none';
    var img = document.getElementById('img_' + id);
    r = img.src.lastIndexOf('opened');
    img.src = img.src.substring(0, r) + 'closed' + img.src.substring(r + 6);
    img.parentElement.onclick = function () {
        openNode(img.id.substring(img.id.lastIndexOf('_') + 1));
    }
}

function openProduct(id) {
    //SetCookie('PHPSESSID',this.sid);
    document.location = "/product/" + id, "edit" + id, "resizable=1, scrollbars = yes, status=0";
}

function acceptBasket(id, count) {
    $('basket').innerHTML = "<p>Заказываем...</p>";
    //alert(count);
    $('basket').style.visibility = 'visible';
    new Ajax.Updater('ajax_log', "/cabinet/add", { asynchronous: true, evalScripts: true, method: 'get', parameters: 'id=' + id + '&count=' + count, onComplete: function (request) { $('basket').innerHTML = "<p>ЗАКАЗ СДЕЛАН</p>"; setTimeout("try{$('pages').style.visibility='visible';}catch(e){}finally{};$('basket').style.visibility='hidden';showSelect();", 1000); } });
}

function addToBasket(id, count) {
    alert('OK');
}

function basketMove() {
    /*
    //window.status=basket_moving;
    if((basket_moving==1)&&(basket_count==0)){
    $('basket').style.left=window.event.clientX+getPageScroll().x-$('basket').offsetWidth/2;
    $('basket').style.top=window.event.clientY+getPageScroll().y-$('basket').offsetHeight/2;
    }
    if ($('pages').offsetTop+'px' < $('basket').style.top){
    $('pages').style.visibility="hidden";
    } else {
    $('pages').style.visibility="visible";
    }
    */

}

var myTimer = 0;

function check_enter(e, obj, price, id) {
    if (e.keyCode != 13) {
        changeCountCart(obj, price);
    } else {
        if (isNaN($('count').value) || $('count').value == '' || $('count').value < 1) {
            $('count').value = 1;
            $('price').innerHTML = number_format($('count').value * price, 2, ',', ' ') + ' руб.';
        }
        e.returnValue = false;
        acceptBasket(id, $('count').value);
    }
}

function getOffsetRect(elem) {
    // (1)
    var box = elem.getBoundingClientRect();

    // (2)
    var body = document.body;
    var docElem = document.documentElement;

    // (3)
    var scrollTop = window.pageYOffset || docElem.scrollTop || body.scrollTop;
    var scrollLeft = window.pageXOffset || docElem.scrollLeft || body.scrollLeft;

    // (4)
    var clientTop = docElem.clientTop || body.clientTop || 0;
    var clientLeft = docElem.clientLeft || body.clientLeft || 0;

    // (5)
    var top = box.top + scrollTop - clientTop;
    var left = box.left + scrollLeft - clientLeft;

    var result = [Math.round(left), Math.round(top)];
    result.left = Math.round(left);
    result.top = Math.round(top);
    return result;
}

function changePologenie(id) {
    //	var dim_move_basket = Position.cumulativeOffset(this.move_basket);
    var dim_move_basket = getOffsetRect(this.move_basket);

    if (Math.abs(Math.abs(dim_move_basket[0]) - Math.abs(this.dim_main_basket[0])) < 10) {
        // Если расстояние между точкой назначения и блоком < 10 останавливаем движение
        dim_move_basket[0] = this.dim_main_basket[0];
    }

    if (Math.abs(Math.abs(dim_move_basket[1]) - Math.abs(this.dim_main_basket[1])) < 10) {
        // Если расстояние между точкой назначения и блоком < 10 останавливаем движение
        dim_move_basket[1] = this.dim_main_basket[1];
    }

    // Движение
    if (dim_move_basket[0] != this.dim_main_basket[0]) {
        this.move_basket.style.left = dim_move_basket[0] + (dim_move_basket[0] > this.dim_main_basket[0] ? -1 : 1) * 10 + 'px';
    }
    if (dim_move_basket[1] != this.dim_main_basket[1]) {
        this.move_basket.style.top = dim_move_basket[1] + (dim_move_basket[1] > this.dim_main_basket[1] ? -1 : 1) * 10 + 'px';
    }

    if (dim_move_basket[0] == this.dim_main_basket[0] && dim_move_basket[1] == this.dim_main_basket[1]) {
        clearTimeout(myTimer);
        acceptBasket(id, $('count').value);
    } else {
        myTimer = setTimeout('changePologenie(' + id + ')', 1);
    }
}

function goBasket(id, price) {
    if (isNaN($('count').value) || $('count').value == '' || $('count').value < 1) {
        $('count').value = 1;
        $('price').innerHTML = number_format($('count').value * price, 2, ',', ' ') + ' руб.';
    }
    Position.prepare();
    this.move_basket = $('basket');
    this.main_basket = $('main_basket');
    //	this.dim_main_basket = Position.cumulativeOffset(main_basket);
    this.dim_main_basket = getOffsetRect(main_basket);

    myTimer = setTimeout('changePologenie(' + id + ')', 100);
}


function openAddToCart(id, name, art, price, count) {
    $('basket').innerHTML = '<div style="position:absolute; top:0px; right:0px;"><span id="closecart" onmousedown="basket_count=1" style="cursor: pointer; cursor: hand;" onclick="showSelect();try{$(\'pages\').style.visibility=\'visible\';}catch(e){}finally{};$(\'basket\').style.visibility=\'hidden\';" ><img src="/images/closecart.gif" align="absmiddle"> Закрыть</span></div><input type="hidden" id="id" name="id" value="' + id + '"><table cellpadding="0" cellspacing="0" width="100%" height="100%" class="cat_table"><tr><td class="th2" style="padding:2px 5px 2px 5px; vertical-align:middle"><table cellpadding="1" cellspacing="0" class="ramkafull" width="100%" border=0><tr><td align="right" class="cart_left_col">Артикул:</td><td colspan="3" width=70%><div class="cartname">' + art + '</div></td></tr><tr><td align="right" class="cart_left_col" valign="top">Название:</td><td colspan="3"><div class="cartname" style="cursor: pointer; cursor: hand;" onmousedown="basket_count=1"><b>' + name + '</b></div></td></tr><tr><td align="right" class="cart_left_col">Цена:</td><td colspan="3"><div class="cartname" id="price">' + number_format(price, 2, ',', ' ') + ' руб.</div></td></tr><tr><td align="right" class="cart_left_col">Кол-во:</td><td width="1"><input onmousedown="basket_count=1" type="text" name="count" id="count" style="width:50px; float:left;" onkeyup="check_enter(event,this,' + price + ',' + id + ');" value="1"><a class="button" href="#" onmousedown="basket_count=1" onclick="goBasket(' + id + ', \'' + price + '\'); return false;" style="" id="cartadd">Добавить!</a></td></tr></table></td></tr></table><iframe id="tmpaddcart" name="tmpaddcart" src="about:blank" width="0" height="0" border="0" style="visibility:hidden"></iframe>';
    $('basket').style.visibility = "visible";
    $('basket').style.left = (mCur.x - 200 > 10 ? mCur.x - 200 : 10) + "px";
    $('basket').style.top = (mCur.y - 20 > 10 ? mCur.y - 20 : 10) + "px";

    if (typeof count != 'undefined') {
        jQuery('#count').val(count);
        basket_count = 1;
        check_enter(event, jQuery('#count')[0], price, id);
    }

    try {
        if ($('pages').offsetTop + 'px' < $('basket').style.top) {
            $('pages').style.visibility = "hidden";
        } else {
            $('pages').style.visibility = "visible";
        }
    } catch (e) { }
    finally { }
    //new Ajax.Updater('basket', "/cabinet/add?id=" + id, {asynchronous:true, evalScripts:true, method:'post', parameters:'file=1', onComplete:function(request){  }});
}

function mouseCoords(e) {
    var x = 0, y = 0;

    if (!e) e = window.event;

    if (e.pageX || e.pageY) {
        x = e.pageX;
        y = e.pageY;
    }
    else if (e.clientX || e.clientY) {
        x = e.clientX + (document.documentElement.scrollLeft || document.body.scrollLeft) - document.documentElement.clientLeft;
        y = e.clientY + (document.documentElement.scrollTop || document.body.scrollTop) - document.documentElement.clientTop;
    }

    return { "x": x, "y": y };
}

function getPageScroll() {
    var x, y;
    if (self.pageYOffset) {// all except Explorer
        x = self.pageXOffset;
        y = self.pageYOffset;
    } else if (document.documentElement && document.documentElement.scrollTop) {// Explorer 6 Strict
        x = document.documentElement.scrollLeft;
        y = document.documentElement.scrollTop;
    } else if (document.body) {// all other Explorers
        x = document.body.scrollLeft;
        y = document.body.scrollTop;
    }
    return { x: x, y: y };
}

function changeCountCart(input, price) {
    /*if (isNaN(input.value)){
    input.value = 1;
    }*/
    /*if (input.value >100){
    input.value = 100;
    }*/
    /*if (input.value == "" || input.value < 1){
    input.value = 1;
    }*/
    try {
        $('price').innerHTML = number_format(input.value * price, 2, ',', ' ') + ' руб.';
    } catch (e) { }
}

function openCart() {
    //SetCookie('PHPSESSID',this.sid);
    SetCookie('back_url', document.location);
    document.location = "/cabinet/basket";
}

function clearCart() {
    //SetCookie('PHPSESSID',this.sid);
    document.frames.act.location = "/?module=cart&method=clear";
}

function SetCookie(sName, sValue) {
    document.cookie = sName + "=" + escape(sValue) + "; expires=Fri, 31 Dec 2070 23:59:59 GMT; path=/;";
}
function GetCookie(sName) {
    // cookies are separated by semicolons
    var aCookie = document.cookie.split("; ");
    for (var i = 0; i < aCookie.length; i++) {
        // a name/value pair (a crumb) is separated by an equal sign
        var aCrumb = aCookie[i].split("=");
        if (sName == aCrumb[0])
            return unescape(aCrumb[1]);
    }

    // a cookie with the requested name does not exist

    return null;
}

function changeVisCartBut() {
    document.getElementById('basket_act').value = 'reprice';
    document.getElementById('reprice').style.display = 'block';
}

function changeTypeOplati(select) {
    if (select.value == 'Bank') {
        //document.getElementById('stoimost_dostavki').style.display = 'block';
        /*
        var sl2 = document.getElementById('sposob_dostavki');
        opt = document.createElement('option');
        opt.value = "SelfDelivery";
        opt.innerText = "Самовывоз";
        sl2.insertBefore(opt);
        */
    } else {
        document.getElementById('address_dostavki').style.display = 'block';
        //document.getElementById('stoimost_dostavki').style.display = 'none';
        //document.getElementById('sposob_dostavki').removeChild(document.getElementById('sposob_dostavki').children(1));
    }
}
function changeSposobDostavki(select) {
    if (select.value == 'Courier') {
        document.getElementById('address_dostavki').style.display = 'block';
    } else {
        document.getElementById('address_dostavki').style.display = 'none';
    }
}

function openprintform(id) {
    //SetCookie('PHPSESSID',this.sid);
    window.open("/cabinet/basket/print?order_id=" + id, "print" + id, "width=650, height=600, resizable=1, scrollbars = 1, status=0").focus();
}

function openUrl(url) {
    //SetCookie('PHPSESSID',this.sid);
    window.open(url, "_blank", "").focus();
}
function openGUrl(url) {
    window.open("http://" + url, "_blank", "").focus();
}
function openOrder(id) {
    //SetCookie('PHPSESSID',this.sid);
    window.location = "/cabinet/orders?id=" + id;
}
function openBill(id) {
    //SetCookie('PHPSESSID',this.sid);

    window.location = "/cabinet/bills?id=" + id;
}
function openSupport(id) {
    //SetCookie('PHPSESSID',this.sid);
    window.location = "?id=" + id;
}
function openDelCompare(id) {
    window.location = "/compare?id=" + id + "&action=del";
}

var products = new Array();

function changeGenerator(pid, id) {
    products[id] = prices[id][pid];
    $('price[' + id + ']').innerHTML = products[id];
    $('itogo[' + id + ']').innerHTML = this.count[id] * $('price[' + id + ']').innerHTML;

}

function calcGenerator() {
    sum = 0;
    for (i in gen_sel) {
        num = products[gen_sel[i]] * count[gen_sel[i]];
        if (parseFloat(num)) {
            sum += parseFloat(num);
        }
    }
    $('gen_total').innerHTML = sum;
}


function dellOrder() {
    ret = window.confirm('Вы уверены, что хотите удалить заказ?');
    if (ret) {
        return true;
    }
    return false;
}

function AddSupport() {
    if ($("support_assquestion").style.display == 'block') {
        $("support_assquestion").style.display = 'none';
    } else {
        $("support_assquestion").style.display = 'block';
    }
}

function checkSupForm() {
    if ($("support[name]").value == '') {
        alert("Вы не заполнили краткое описание проблемы.");
        $("support[name]").focus();
        return false;
    }
    if ($("support[description]").innerHTML == '') {
        alert("Вы не заполнили описание проблемы.");
        $("support[description]").focus();
        return false;
    }
    return true;
}
function checkSupForm2() {
    if ($("support[description]").innerHTML == '') {
        alert("Вы не заполнили вопрос.");
        $("support[description]").focus();
        return false;
    }
    return true;
}

function compare(id) {
    //SetCookie('PHPSESSID',this.sid);
    win = window.open("/compare?id=" + id, "compare_window", "width=630, height=480, resizable=1, scrollbars = yes, status=0").focus();
    if (win) { win.focus(); }
}

function compareAll(form) {
    //SetCookie('PHPSESSID',this.sid);
    if (!form) return false;
    ids = '';
    for (var i in form.elements) {
        if (form.elements[i]) {
            if (form.elements[i].type == 'checkbox' && form.elements[i].checked) {
                ids += form.elements[i].name + ',';
            }
        }
    }
    win = window.open("/compare?ids=" + ids, "compare_window", "width=630, height=480, resizable=1, scrollbars = yes, status=0").focus();
    if (win) { win.focus(); }
}

function checkAllCompare(form, checked) {
    if (!form) return false;
    for (var i in form.elements) {
        if (form.elements[i]) {
            if (form.elements[i].type == 'checkbox') {
                form.elements[i].checked = checked;
            }
        }
    }
}

function checkLogin() {
    if ($('loginform_login').value == "") {
        alert('Вы должны указать свой login.');
        $('loginform_login').focus();
        return false;
    }
    //SetCookie('PHPSESSID',this.sid);

    window.location = "/cabinet/forget_password?login=" + $('loginform_login').value;
    return false;
}

function openImage(image, ev) {
    var ev = window.event || ev;
    if (ev == undefined) {
        if (image) window.open("/popup.php?img=" + image, "popupimage", "scrollbars=0,resizable=0,width=100,height=100,location=0,menubar=0,status=0,toolbar=0").focus();
        return false;
    }
    var obj = ev.srcElement || ev.target;
    if (obj.tagName == 'IMG') obj = obj.parentNode;
    return hs.expand(obj);
}

function number_format(number, decimals, dec_point, thousands_sep) {
    var exponent = "";
    var numberstr = number.toString();
    var eindex = numberstr.indexOf("e");
    var i, z;
    if (eindex > -1) {
        exponent = numberstr.substring(eindex);
        number = parseFloat(numberstr.substring(0, eindex));
    }

    if (decimals != null) {
        var temp = Math.pow(10, decimals);
        number = Math.round(number * temp) / temp;
    }
    var sign = number < 0 ? "-" : "";
    var integer = (number > 0 ?
	    Math.floor(number) : Math.abs(Math.ceil(number))).toString();

    var fractional = number.toString().substring(integer.length + sign.length);
    dec_point = dec_point != null ? dec_point : ".";
    fractional = decimals != null && decimals > 0 || fractional.length > 1 ? (dec_point + fractional.substring(1)) : "";
    if (decimals != null && decimals > 0) {
        for (i = fractional.length - 1, z = decimals; i < z; ++i)
            fractional += "0";
    }

    thousands_sep = (thousands_sep != dec_point || fractional.length == 0) ?
	                thousands_sep : null;
    if (thousands_sep != null && thousands_sep != "") {
        for (i = integer.length - 3; i > 0; i -= 3)
            integer = integer.substring(0, i) + thousands_sep + integer.substring(i);
    }
    return sign + integer + fractional + exponent;
}

function get_sale_file() {
    var url = window.location.href;
    var re = /cd/i;
    if (url.search(re) != -1) {
        window.location.href = 'files/price/price_all_sale_' + root_id + '.xls';
    }
    else {
        window.location.href = '/price_list?sale';
    }
}

function closeMap(event) {
    if (!event) event = window.event;
    var element = event.target || event.srcElement;
    if ($('geomap') && $('geomap').style != undefined && $('geomap').style.display != 'none' && element.id != 'mapLink') {
        var x = event.clientX;
        var left = parseInt($('geomap').style.left);
        if (x < left || x > (left + 950)) {
            showMap();
            return;
        }
        var y = event.clientY;
        var top = parseInt($('geomap').style.top);
        if (y < top || y > (top + 544)) {
            showMap();
            return;
        }
    }
}
// Читаем GET URL переменные и возвращаем их в виде хэша.
function getUrlVars() {

    var vars = [], hash;

    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');

    for (var i = 0; i < hashes.length; i++) {

        hash = hashes[i].split('=');

        vars.push(hash[0]);

        vars[hash[0]] = hash[1];

    }

    return vars;
}