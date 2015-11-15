// file input
function fileInput() {
    var jQueryfile = jQuery('div.elemBox.file input[type="file"]');

    jQueryfile.on('change', function () {
        var jQueryinputText = jQuery(this).parents('a').next().children('input[type="text"]');
        var jQueryfileVal = jQuery(this).val();
        jQueryinputText.attr('value', jQueryfileVal);
    });
}

// add last class
function lastClass() {
    jQuery('.mainMenu td:last-child').addClass('dropR');
    jQuery('.picCatalog .dropShadow ul > li:last-child, .extraProduct ul > li:last-child').addClass('last');
}

// add first class
function firstClass() {
    jQuery('.test li:first-child').addClass('first');
}

// styled select
function styledSelect() {
    if (!(jQuery.browser.msie && jQuery.browser.version <= 6)) {
        var jQueryselects = jQuery('select');
        jQueryselects.each(function () {
            jQuery(this).wrap('<div class="selectBox"></div>');
            if (jQuery(this).is(':disabled')) {
                jQuery(this).parents('.selectBox').addClass('disabled');
            }

            var jQueryops = jQuery(this).children('option');
            jQueryops.each(function () {
                if (jQuery(this).is('[selected]')) {
                    jQuery(this).addClass('selected');
                }
            });

            if (jQueryops.hasClass('selected')) {
                var jQueryselectedText = jQuery(this).children('option.selected').text();
                jQuery(this).before('<span class="selectText">' + jQueryselectedText + '</span>');
            }
            else {
                var jQueryfirstText = jQuery(this).children('option:first').text();
                jQuery(this).before('<span class="selectText">' + jQueryfirstText + '</span>');
            }

            jQuery(this).change(function () {
                var jQuerytext = jQuery(this).children('option:selected').text();
                jQuery(this).siblings('.selectText').text(jQuerytext);
            });
        });
    }
}

// main text catalog open/close
function visibilityCatalog() {
    jQuery('.catTitle .visibilityCat').toggle(
		function () {
		    jQuery(this).parent().siblings('.hiddenBlock').toggleClass('show');
		    if (jQuery(this).text() == 'Развернуть') {
		        jQuery(this).text('Свернуть');
		    }
		    else {
		        jQuery(this).text('Развернуть');
		    }
		    return false;
		},
		function () {
		    jQuery(this).parent().siblings('.hiddenBlock').toggleClass('show');
		    if (jQuery(this).text() == 'Свернуть') {
		        jQuery(this).text('Развернуть');
		    }
		    else {
		        jQuery(this).text('Свернуть');
		    }
		    return false;
		}
	);

    jQuery('.hiddenBlock .visibilityCat').click(function () {
        jQuery(this).parents('.hiddenBlock').toggleClass('show');
        jQuery('.catTitle .visibilityCat').text('Развернуть');
        return false;
    });
}

// footer height
function footH() {
    var h = jQuery('.footInside').height();
    jQuery('footer').css({ 'height': h, 'marginTop': -(h) });
    jQuery('.clearFooter').css('height', h + 10);
    overlayHeight();
}

// seo block open/close
function seoOpen() {
    jQuery('.seoBlock .visibilityCat').toggle(
		function () {
		    jQuery(this).parents('.seoBlock').toggleClass('open');
		    jQuery(this).text('Свернуть');
		    footH();
		    return false;
		},
		function () {
		    jQuery(this).parents('.seoBlock').toggleClass('open');
		    jQuery(this).text('Развернуть');
		    footH();
		    return false;
		}
	);
}

// pic catalog cl li
function picCatalogCl() {
    jQuery('.picCatalog > li:nth-child(6n)').next('li').before('<li class="cl"></li>');
}

function picCatTwoLevel() {
    var jQuerypicCatItem = jQuery('.picCatalog > li');
    jQuerypicCatItem.each(function () {
        var left = jQuery(this).position().left;
        var fixLeftIndent = left + 235; // левая колонка + отступы
        var jQuerydropItem = jQuery(this).children('.dropShadow');
        if (jQuerydropItem.hasClass('item6')) {
            jQuerydropItem.css('left', -fixLeftIndent + 130);
        }
        // если 1 в строке
        else if ((jQuerydropItem.hasClass('item5') && left == 0) || (jQuerydropItem.hasClass('item4') && left == 0) || (jQuerydropItem.hasClass('item3') && left == 0) || (jQuerydropItem.hasClass('item2') && left == 0) || (jQuerydropItem.hasClass('item1') && left == 0)) {
            jQuerydropItem.css('left', -fixLeftIndent + 200);
        }
        // если 2 в строке
        else if ((jQuerydropItem.hasClass('item4') && left == 119) || (jQuerydropItem.hasClass('item3') && left == 119)) {
            jQuerydropItem.css('left', -fixLeftIndent + 200);
        }
        else if ((jQuerydropItem.hasClass('item2') && left == 119)) {
            jQuerydropItem.css('left', -fixLeftIndent + 256);
        }
        else if ((jQuerydropItem.hasClass('item1') && left == 119)) {
            jQuerydropItem.css('left', -fixLeftIndent + 316);
        }
        // если 3 в строке
        else if ((jQuerydropItem.hasClass('item3') && left == 238)) {
            jQuerydropItem.css('left', -fixLeftIndent + 308);
        }
        else if ((jQuerydropItem.hasClass('item2') && left == 238)) {
            jQuerydropItem.css('left', -fixLeftIndent + 375);
        }
        else if ((jQuerydropItem.hasClass('item1') && left == 238)) {
            jQuerydropItem.css('left', -fixLeftIndent + 438);
        }
        // если 4 в строке
        else if ((jQuerydropItem.hasClass('item2') && left == 357)) {
            jQuerydropItem.css('left', -fixLeftIndent + 493);
        }
        else if ((jQuerydropItem.hasClass('item1') && left == 357)) {
            jQuerydropItem.css('left', -fixLeftIndent + 556);
        }
        // если 5 в строке
        else if ((jQuerydropItem.hasClass('item1') && left == 476)) {
            jQuerydropItem.css('left', -fixLeftIndent + 676);
        }
        // по правому краю
        else if (jQuerydropItem.hasClass('item5')) {
            jQuerydropItem.css('left', -fixLeftIndent + 260);
        }
        else if (jQuerydropItem.hasClass('item4')) {
            jQuerydropItem.css('left', -fixLeftIndent + 390);
        }
        else if (jQuerydropItem.hasClass('item3')) {
            jQuerydropItem.css('left', -fixLeftIndent + 520);
        }
        else if (jQuerydropItem.hasClass('item2')) {
            jQuerydropItem.css('left', -fixLeftIndent + 650);
        }
        else if (jQuerydropItem.hasClass('item1')) {
            jQuerydropItem.css('left', -fixLeftIndent + 780);
        }
        // когда 7 и более
        else {
            jQuerydropItem.css('left', -fixLeftIndent);
        }
    });
}

function overlayHeight() {
    var wrapH = jQuery('.wrap').height();
    jQuery('.overlay').css('height', wrapH);
}

function showMapBox(e, mapId) {
    e = e || window.event;
    var y = 0;
    if (e.pageX == null && e.clientX != null) {
        var html = document.documentElement;
        var body = document.body;
        y = e.clientY + (html && html.scrollTop || body && body.scrollTop || 0) - (html.clientTop || 0);
    } else {
        y = e.pageY;
    }
    load_yandex_map(y, mapId);
}

function showMapBoxLoad(y, mapId) {
    jQuery('#' + mapId).addClass('show');
    var mapBoxH = jQuery('#' + mapId).children('.mapBox').outerHeight();
    if (jQuery('#' + mapId).hasClass('topMap')) {
        jQuery('#' + mapId).children('.dropShadow').css('top', y + 25);
    }
    else if (jQuery('#' + mapId).hasClass('callMe')) {
        jQuery('#' + mapId).children('.dropShadow').css('top', y + 25);
    }
    else {
        jQuery('#' + mapId).children('.dropShadow').css('top', y - mapBoxH / 2);
    }
}

function mapClose() {
    jQuery('.dropShadow .close').click(function () {
        jQuery(this).parents('.overlay').removeClass('show');
        jQuery('#drop_map_show').empty();
    });

    jQuery('.dropShadow.mapBox').click(function () {
        return false;
    });

    jQuery('.overlay').click(function () {
        jQuery('#mapBox1, #mapBox2, #mapBox3, #mapBox4, #mapBox5').removeClass('show');
        jQuery('#drop_map_show').empty();
    });

    //	jQuery('body').click( function(event){
    //		if ( jQuery(event.target).closest('.mapsLink').length ) {
    //			return;
    //		}
    //		if ( jQuery(event.target).closest('.dropShadow.mapBox').length ) {
    //			return;
    //		}
    //		jQuery('#mapBox1, #mapBox2, #mapBox3').removeClass('show');
    //		event.stopPropagation();
    //	});
}

load_yandex_map = function (y, id) {
    jQuery.ajax({
        type: "POST",
        url: "/loadmap" + '?nmbr=' + id,
        dataType: "json",

        timeout: 50000,

        success: function (data) {
            if (typeof data.map != 'undefined') {
                jQuery('#drop_map_show').html(data.map);

                footH();
                overlayHeight();
                setTimeout(function () { mapClose() }, 50);
                setTimeout(function () { showMapBoxLoad(y, id) }, 50);
            }
        },

        error: function (request, status, errorT) {
            alert('������ ������ ����� �������� �� ��������, ��������� ������� ����� ��������� �����.');
            //alert("XMLHttpRequest="+request.responseText+"\ntextStatus="+status+"\nerrorThrown="+errorT);
            //$('#listBoxDataTable').html('��������� ����. ������ �� ����� ���� ��������. ��������� �������.');
        }
    });
};

function buttonDrop() {
    jQuery('.callMeDrop').click(function () {
        var top = jQuery(this).offset().top;
        jQuery('#callMe').children('.dropShadow').css('top', top);
        jQuery('#callMe').addClass('show');
        return false;
    });

    jQuery('.loadOrderDrop').click(function () {
        var top = jQuery(this).offset().top;
        if (jQuery(this).hasClass('topLoad')) {
            jQuery('#loadOrder').addClass('topLoad');
        }
        else {
            jQuery('#loadOrder').removeClass('topLoad');
        }
        jQuery('#loadOrder').children('.dropShadow').css('top', top);
        jQuery('#loadOrder').addClass('show');
        return false;
    });

    jQuery('.loadOrder .button.active, .callMe .button.active, .reviewForm .button.active').click(function () {
        jQuery('#loadOrder, #callMe, #reviewForm').removeClass('show');
        return false;
    });

    jQuery('body').click(function (event) {
        if (jQuery(event.target).closest('.loadOrder .dropShadow, .callMe .dropShadow, .reviewForm .dropShadow, .autocomplete, .catSearch').length) {
            return;
        }
        jQuery('#loadOrder, #callMe, #reviewForm').removeClass('show');
        jQuery('.autocomplete').hide();
        jQuery('.autocomplete').html('');
        event.stopPropagation();
    });

    jQuery('.reviewFormDrop').click(function () {
        var top = jQuery(this).offset().top;
        jQuery('#reviewForm').children('.dropShadow').css('top', top);
        jQuery('#reviewForm').addClass('show');
        return false;
    });

}

function addMoreFile() {
    jQuery('.addMoreFile').click(function () {
        jQuery(this).parent('p').siblings('.elemBox.file.hide').eq(0).removeClass('hide');
        return false;
    });
}

function fixPanel() {
    if (jQuery(window).scrollTop() > 0) {
        jQuery('.topFix').addClass('scroll');
    }
    if (jQuery(window).scrollTop() == 0) {
        jQuery('.topFix').removeClass('scroll');
    }
}

function tabSwitch() {
    jQuery('dl.tabs dt').click(function () {
        jQuery(this).siblings().removeClass('active').end().next('dd').andSelf().addClass('active');
    });
}

function trClick() {
    jQuery('.picCatalog li').mouseover(function () {
        jQuery(this).find('.item1 .jcarousel-next, .item2 .jcarousel-next, .item3 .jcarousel-next, .item4 .jcarousel-next, .item5 .jcarousel-next, .item6 .jcarousel-next').addClass('jcarousel-next-disabled jcarousel-next-disabled-horizontal');
        jQuery('div.autocomplete').hide();
    });
}

function menuHover() {
    jQuery('.mainMenu').hover(
		function () {
		    jQuery('.wrap').css('zIndex', '3');
		},
		function () {
		    jQuery('.wrap').css('zIndex', '1');
		}
	);
}

function autosuggestForSearch() {
    new autosuggestSearchClass(jQuery('#catSearch_header'), 'header', '/autocomplete.php');
    new autosuggestSearchClass(jQuery('#catSearch_main'), 'main', '/autocomplete.php');
    new autosuggestSearchClass(jQuery('#catSearch_second'), 'second', '/autocomplete.php');
}

function dutyclose() {
    jQuery('.duty .close').click(function () {
        var date = new Date;
        var year = date.getFullYear();
        var mon = date.getMonth() + 1;
        if (mon < 10) mon = '0' + mon;
        var day = date.getDate();
        if (day < 10) day = '0' + day;
        var cook_name = (jQuery(this).attr('is_alert') == '1') ? 'duty_alert_close' : 'duty_manager_close';
        document.cookie = cook_name + "=" + escape(year + '-' + mon + '-' + day) + "; expires=Fri, 31 Dec 2070 23:59:59 GMT; path=/;";
        jQuery(this).closest('div.duty').hide();
    })
}

function dutyinner() {
    function inner() {
        var w = jQuery(window).width();
        if (w < 1330) { jQuery('div.duty').addClass('inner') }
        else { jQuery('div.duty').removeClass('inner') }

        if (w < 1670) { jQuery('.commerc-popup').addClass('inner') }
        else { jQuery('.commerc-popup').removeClass('inner') }
    }
    inner();
    jQuery(window).resize(function () {
        inner();
    });
}

function popup_rotation() {
    // При первом заходе на сайт, запоминаем страницу и показываем сообщения только на ней
    // При уходе с сайта "забываем" страницу

    var url = location.pathname;

    var popup_banner = GetCookie("popup_banner_url");
    if (popup_banner && popup_banner != url) {
        // другая страница, не надо показывать баннеры
        return;
    }

    document.cookie = "popup_banner_url=" + url + "; expires=0;";

    var popup = jQuery('.commerc-popup');
    var popup_qt = popup.size();
    popup.css({ opacity: 0 }).show();

    var i = 1;

    popup.each(function () {
        var hg = jQuery(this).outerHeight();

        jQuery(this).css('bottom', '-' + (hg + 10) + 'px');

        var timeout = parseInt(popup_banner_show_time);
        if (i == 1) {
            timeout = 0;
        }
        jQuery(this)
            .delay(parseInt(popup_banner_delay) * i + timeout * i - timeout)
            .animate({ opacity: 1, bottom: 10 }, 500)
            .delay(parseInt(popup_banner_show_time))
            .animate({ opacity: 0, bottom: -(hg + 10) }, 500);

        i++;
    });

    jQuery(".commerc-popup__close").click(function () {
        popup.remove();
    });
}