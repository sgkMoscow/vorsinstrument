var autosuggestSearchClass = function (field, type, dirs) {

    field.attr('autocomplete', 'off');

    this.field = field;
    this.output = jQuery("#autosuggestResults_" + type);

    var _this = this;
    this.position = -1;

    this.lastValue = '';
    this.newValue = '';

    this.ajaxUrl = dirs;

    field.keyup(function (ev) {
        if (_this.isActionKey(ev)) return _this.action(ev);
        else return _this.requestSuggests();
    });
};

autosuggestSearchClass.prototype.isActionKey = function (ev) {
    switch (getCharCode(ev)) {
        case 13: // Enter
        case 27: // Escape
        case 40: // Down
        case 38: // Up
            return true;
            break;
    }
    return false;
};

autosuggestSearchClass.prototype.action = function (ev) {
    switch (getCharCode(ev)) {
        case 13:    //если нажата клавиша Enter
            if (jQuery(this.output).is(':visible')) {
                if (this.setValue()) {
                    if (!document.all)
                        ev.preventDefault();
                    else
                        ev.returnValue = false;
                }
            }
            return true;
            break;
        case 27: // Escape
            if (jQuery(this.output).is(':visible')) {
                jQuery(this.output).hide();
            }
            return true;
            break;
        case 40:    //если нажата клавиша "Вниз"
            this.makeSteps('down');
            return true;
            break;
        case 38:    //если нажата клавиша "Вверх"
            this.makeSteps('up');
            return true;
            break;
    }
    return false;
};

// отправка запроса на сервер
autosuggestSearchClass.prototype.requestSuggests = function () {

    this.newValue = this.field.val();

    if (this.newValue == '') { // нет выбранного/введенного значения
        this.output.hide();
        this.output.html('');
        this.lastValue = this.newValue;
        return false;
    }

    if (this.lastValue == this.newValue) { // значение не изменилось с прошлого раза
        return false;
    }

    if (this.newValue.length >= 3) {
        var self = this;
        jQuery.post(
                this.ajaxUrl,
                { search: this.newValue },
                function (data) {
                    self.output.html(data);
                    var ul = self.output.find('ul');
                    if (ul.length) {
                        self.output.find('ul').append('<li><a href="/search?search=' + self.newValue + '">Все результаты</a></li>');
                        self.output.show();
                    } else {
                        self.output.hide();
                    }
                }
        );
    }

    this.lastValue = this.newValue;
};

// выбрали значение из списка
autosuggestSearchClass.prototype.setValue = function () {
    var result_items = this.output.find('li');
    if (result_items.length) {
        for (var i = 0; i < result_items.length; i++) {
            if (jQuery(result_items[i]).hasClass('active')) {
                $(this.output).hide();
                var link = jQuery(result_items[i]).find('a');
                location.href = link.attr('href');
            }
        }
    }
};

// навигация по результатам запроса с помощью клавиатуры
autosuggestSearchClass.prototype.makeSteps = function (direction) {
    var result_items = this.output.find('li');
    if (result_items.length) {
        var result_items_length = result_items.length;
        var currValues = [];
        for (var i = 0; i < result_items_length; i++) {
            jQuery(result_items[i]).removeClass('active');
            currValues[i] = jQuery(result_items[i]).find('span.prod').text();
        }
        if (direction == 'down' && this.position < result_items_length - 1) {
            // жмем "вниз" и еще есть куда вниз опускаться - просто опускаемся на один пункт ниже
            this.position++;
        }
        else if (direction == 'up' && this.position > 0) {
            // жмем "вверх" и еще есть куда вверх подниматься - просто поднимаемся на один пункт выше
            this.position--;
        }
        else if (direction == 'down' && this.position >= result_items_length - 1) {
            // жмем "вниз" и текущая позиция больше кол-ва элементов в списке - переходим в начало
            this.position = 0;
        }
        else if (direction == 'up' && this.position <= 0) {
            // жмем "вверх" и некуда вверх подниматься - просто переходим к последнему пункту
            this.position = result_items_length - 1;
        }
        jQuery(result_items[this.position]).addClass('active');
        this.field.val(currValues[this.position]);
    }
};

function getCharCode(ev) {
    var charCode;
    if (ev.charCode) charCode = ev.charCode;
    else if (ev.keyCode) charCode = ev.keyCode;
    else if (ev.which) charCode = ev.which;
    else charCode = 0;
    return charCode;
}