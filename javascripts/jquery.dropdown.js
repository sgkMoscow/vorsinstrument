var maxHeight = jQuery(window).height() - jQuery('header').outerHeight() - 150;
jQuery(window).resize(function () {
    maxHeight = jQuery(window).height() - jQuery('header').outerHeight() - 150;
});

jQuery(document).ready(function () {
    jQuery(window).resize();
});

jQuery(function () {

    jQuery(".mainMenu .item").hover(function () {

        jQuery(".mainMenu .item").removeClass("hover");

        var container = jQuery(this).find('.longDropBox'),
                list = container.find("ul.dropMenu"),
                anchor = jQuery(this),
                multiplier = list.height() / maxHeight;     // needs to move faster if list is taller

        // so it can retain it's rollover color all the while the dropdown is open
        anchor.addClass("hover");

        // make sure dropdown appears directly below parent list item    
        list.show();

        // don't do any animation if list shorter than max
        if (multiplier > 1) {
            container
                    .css({
                        height: maxHeight,
                        overflow: "hidden"
                    })
                    .mousemove(function (e) {
                        var offset = container.offset(); // смещение longDropBox относительно документа
                        var y = e.pageY - offset.top; // положение курсора относительно longDropBox
                        var pos = y / maxHeight; // в какой части longDropBox мы находимся (от 0 до 1)
                        pos = (pos - 0.1) * 10 / 8; // начинаем скролл в интервале 10-90% высоты

                        var top;
                        if (pos >= 0 && pos <= 1) { // находимся ли мы в интервале, в котором нужно скроллить
                            var relativeY = pos * maxHeight * multiplier; // позиция курсора относительно <ul>
                            top = -relativeY + pos * maxHeight;
                        }
                        else if (pos < 0) { // меньше 10%
                            top = 0;
                        }
                        else { // больше 90%
                            top = -maxHeight * (multiplier - 1) - 2;
                        }
                        list.css("top", top);
                    });
        }

    }, function () {

        /*var el = jQuery(this).find('.longDropBox');

        // put things back to normal
        el
        .css('height', '')
        .find("ul.dropMenu")
        .css({ top: 0 })
        .hide()
        .end()
        .parent()
        .removeClass("hover");

        jQuery(".mainMenu .item").removeClass("hover");*/

    });

    // Add down arrow only to menu items with submenus
    // jQuery(".dropdown > li:has('ul')").each(function() {
    //     jQuery(this).find("a:first").append("<img src='images/down-arrow.png' />");
    // });


});


