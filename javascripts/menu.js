var hideAllMenuTimer;
var hideMenuTimer;
var showMenuTimer;
var my_parent;
var lastOpenFromNavBar = false;
var menuArr = {};

jQuery(document).ready(function () {
    jQuery("table#nav").find('div.item').find('a').hover(
            function () {
                clearTimeout(hideAllMenuTimer);
                if (jQuery(this).find('span').length) {
                    hideMenu();
                }
                jQuery("table#nav").find('div.item').removeClass("hover");
                jQuery(this).addClass("hover");
                onLeftMenuClick(jQuery(this)[0]);
            },
            function () {
            }
    );

    var links = jQuery('a.first');
    jQuery(".mainMenu").mouseleave(function (ev) {
        if (ev.fromElement != undefined) {
            if (ev.fromElement == this) {
                bodyMouseClick();
            } else {
                links.each(function () {
                    if (this == ev.fromElement) {
                        bodyMouseClick();
                    }
                });
            }
        }
        else if (ev.target == this) {
            bodyMouseClick();
        }
        else {
            links.each(function () {
                if (this == ev.target) {
                    bodyMouseClick();
                }
            });
        }
    });
});

var productMenu = function () {
    clearTimeout(showMenuTimer);

    if (!my_parent.id) return;

    if (menuArr[my_parent.id]) return;

    this.menu = null;
    this.my_parent = my_parent;
    this.id = my_parent.id;
    this.next = null;

    this.level = 1;
    for (var mn in menuArr) {
        if (productionDivArr[menuArr[mn].id]) {
            if (productionDivArr[menuArr[mn].id][this.id]) {
                menuArr[mn].next = this;
                this.level += menuArr[mn].level;
            }
            else {
                if (!menuArr[mn].next) menuArr[mn].close();
            }
        }
        else menuArr[mn].close();
    }
    for (mn in menuArr) {
        if (menuArr[mn].level >= this.level) {
            menuArr[mn].close();
        }
    }

    if (productionDivArr[this.id]) {
        if (levelsArr[this.id] == 2) {
            this.menu = document.createElement('div');
            this.menu.className = "longDropBox";
            var ul = document.createElement('ul');
            ul.className = "dropMenu";
            this.menu.appendChild(ul);
        } else {
            this.menu = document.createElement('ul');
            this.menu.className = "dropMenu static level" + levelsArr[this.id];

            var p = jQuery(my_parent);
            this.menu.style.left = p.offset().left + p.width() + 10 + "px";
            this.menu.style.top = p.offset().top + "px";
        }
        var ii = 0;
        for (var arr in productionDivArr[this.id]) {
            var li = document.createElement('li');
            li.innerHTML = "<a href='" + hrefsArr[arr] + "'>" + productionDivArr[this.id][arr] + '</a>';
            li.id = arr;
            if (!productionDivArr[li.id]) {
                //li.addClassName("lastLevel");
                jQuery(li).addClass("lastLevel");
            }
            li.onmousemove = new Function("onMouseMove(this)");
            li.onmouseout = new Function("onMenuOut(this)");
            li.onmouseover = new Function("onFloatMenuOver(this)");
            if (levelsArr[this.id] == 2) {
                ul.appendChild(li);
            } else {
                this.menu.appendChild(li);
            }
            ii++;
        }
    }

    if (this.menu) {
        if (levelsArr[this.id] == 2) {
            var parent = jQuery(my_parent).parent();
            parent[0].appendChild(this.menu);
        } else {
            document.body.appendChild(this.menu);
            // чтобы меню не уходило вправо за пределы экрана
            if (jQuery(window).width() < 1380 && jQuery(this.menu).offset().left > 1000) {
                this.menu.style.left = "525px";
            }
            // Чтобы пункты не выпадали слишком вниз (за пределы экрана) - поднимаем их выше
            var menu_top = jQuery(this.menu).position().top;
            var menu_height = jQuery(this.menu).height();
            var screen_height = jQuery(window).height();
            if (menu_top + menu_height > screen_height) {
                var top = parseInt(this.menu.style.top);
                top -= menu_top + menu_height - screen_height + 10;
                this.menu.style.top = top + "px";
            }
        }
    }
    menuArr[this.id] = this;
};

productMenu.prototype.close = function () {
    jQuery(this.menu).remove();
    delete menuArr[this.id];
};

function onMouseMove() {
    clearTimeout(hideMenuTimer);
}

function onMenuOut() {
    clearTimeout(showMenuTimer);
    clearTimeout(hideMenuTimer);
    hideMenuTimer = setTimeout("hideMenu()", 1000);
}

function hideMenu() {
    clearTimeout(showMenuTimer);
    clearTimeout(hideMenuTimer);
    for (var mn in menuArr) {
        menuArr[mn].close();
    }
}

function onFloatMenuOver(el) {
    clearTimeout(showMenuTimer);
    my_parent = el;
    showMenuTimer = setTimeout("new productMenu()", 100);
}

function onLeftMenuClick(el) {
    if (lastOpenFromNavBar) {
        hideMenu();
        lastOpenFromNavBar = false;
    }
    my_parent = el;
    new productMenu();
}

function bodyMouseMove() {
    var i = 0;
    for (var mn in menuArr) {
        i++;
    }
    if (i == 0) {
        hideAllMenuTimer = setTimeout("hideAllMenu()", 1000);
    }
}

function bodyMouseClick() {
    hideMenu();
    hideAllMenu();
}

function hideAllMenu() {
    jQuery("table#nav").find('div.item').removeClass("hover");
}

document.body.onmousemove = bodyMouseMove;
document.body.onclick = bodyMouseClick;