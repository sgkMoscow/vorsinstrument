<%@ Page Title="" Language="C#" MasterPageFile="~/Section.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="vorsinstrument.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
<!-- Если вы используете API локально, то в URL ресурса необходимо указывать протокол в стандартном виде (http://...)-->
<script src="//api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>

<script type="text/javascript">
    ymaps.ready(init);

    function init() {
        var myMap = new ymaps.Map('map', {
            center: [55.634, 37.439],
            zoom: 14
        });

        // Для добавления элемента управления на карту
        // используется поле map.controls.
        // Это поле содержит ссылку на экземпляр класса map.control.Manager.

        // Добавление элемента в коллекцию производится
        // с помощью метода add.

        // В метод add можно передать строковый идентификатор
        // элемента управления и его параметры.
        myMap.controls
        // Кнопка изменения масштаба.
        .add('zoomControl', { left: 5, top: 5 })
        // Список типов карты
        .add('typeSelector')
        // Стандартный набор кнопок
        .add('mapTools', { left: 35, top: 5 });

        // Также в метод add можно передать экземпляр класса элемента управления.
        // Например, панель управления пробками.
        var trafficControl = new ymaps.control.TrafficControl();
        myMap.controls
        .add(trafficControl)
        // В конструкторе элемента управления можно задавать расширенные
        // параметры, например, тип карты в обзорной карте.
        .add(new ymaps.control.MiniMap({
            type: 'yandex#publicMap'
        }));

        /*
        // Удаление элементов управления производится через метод remove.
        myMap.controls
        .remove(trafficControl)
        .remove('mapTools');
        */
    }
</script>
<div style="color: #DF3800">
    <span style="font-size: large; font-family: 'Times New Roman'"><strong>Офисы в Москве</strong></span>
</div>
<div style="color: #D83801">
Центральный офис
</div>
<div>
г.Москва, 1-км Киевского шоссе, бизнес парк "Румянцево" (м.Юго-Западная) <br/>
тел. (495) 795-75-98
</div>
<div>
<p>Общественным транспортом.</p>

<p>От метро &quot;Юго-Западная&quot;.</p>

<p>Первый вагон из центра, выход направо в переход и налево по лестнице. Далее следуйте прямо, по правую руку от вас будет ТОРГОВЫЙ ЦЕНТР, за ним как ориентир автозаправка BP, далее стихийная парковка и прямо перед вами забор (стройка Метрополитена) и автобусная остановка, на которой останавливается&nbsp;<strong>БЕСПЛАТНЫЙ автобус</strong> до БП &laquo;РУМЯНЦЕВО&raquo;.</p>

<p>По маршруту следования автобус делает три остановки:</p>

<ul>
	<li>Первая &ndash; на Киевском шоссе напротив корпуса Б,</li>
	<li>Вторая &ndash; между корпусом Г и Е,</li>
	<li>Третья - конечная у многоэтажной парковки.</li>
</ul>

<p>Так же до нас можно добраться следующими маршрутами:</p>

<ul>
	<li>707 автобус</li>
	<li>611 автобус, 611с</li>
	<li>272 автобус</li>
	<li>844 автобус</li>
	<li>343 м - это маршрутное такси (большой белый автобус&quot;Автолайн&quot; и микроавтобус Mersedes), посадка осуществляется рядом с остановкой 707 автобуса.</li>
	<li>590 м - это маршрутное такси (большой автобус).</li>
	<li>863 автобус</li>
	<li>890 автобус</li>
	<li>1011 - это маршрутное такси (микроавтобус)</li>
</ul>

</div>
<div id="Карта бизнес парка">
    <img src="images/map_BP.JPG" width="700px"/>
</div>
<div id="Схема проезда">
<div id="map" style="width:700px; height:500px">
   
    </div>
    <!--Реквизиты -->
    <div style="color: #DF3800">
    <table  
        style="table-layout: fixed; border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: 'Times New Roman', Times, serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        <tr class="r1" style="height: 0.30555555in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p2" 
                    style="text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">Наименование</span></p>
                <p class="p2" 
                    style="text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">юридического лица</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">ООО «Ворсино Инструмент»</span></p>
            </td>
        </tr>
        <tr class="r2" style="height: 0.21527778in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">Юридический адрес</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">119331 г.Москва, пр-т Вернадского , д.29 
                    , пом. 1 , комн. 7</span></p>
            </td>
        </tr>
        <tr class="r3" style="height: 0.5263889in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">Почтовый адрес</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">119331 г.Москва, пр-т Вернадского , д.29 
                    , пом. 1 , комн. 7</span></p>
            </td>
        </tr>
        <tr class="r4" style="height: 0.19722222in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">Телефон/факс</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p5" 
                    
                    style="margin-left: 0.09861111in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">8-495-795-75-98</span></p>
            </td>
        </tr>
        <tr class="r2" style="height: 0.21527778in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">ИНН</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">7736245926</span></p>
            </td>
        </tr>
        <tr class="r2" style="height: 0.21527778in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">КПП</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">773601001</span></p>
            </td>
        </tr>
        <tr class="r5" style="height: 0.1875in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">р/с</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; font-size: 14px;">
                    <span class="s2" style="color: black;">4070281090127000<wbr>0925</span></p>
            </td>
        </tr>
        <tr class="r6" style="height: 0.4826389in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">банк</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; font-size: 14px;">
                    <span class="s2" style="color: black;">Ф ОНЛАЙН ПАО &quot;ХАНТЫ-МАНСИЙСКИ<wbr>Й БАНК 
                    ОТКРЫТИЕ&quot;</span></p>
            </td>
        </tr>
        <tr class="r2" style="height: 0.21527778in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">к/с</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; font-size: 14px;">
                    <span class="s2" style="color: black;">3010181060000000<wbr>0999</span></p>
            </td>
        </tr>
        <tr class="r2" style="height: 0.21527778in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p4" 
                    
                    style="margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">БИК</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p3" 
                    
                    style="margin-left: 0.09861111in; margin-bottom: 0.083333336in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">044583999</span></p>
            </td>
        </tr>
        <tr class="r7" style="height: 0.38333333in;">
            <td class="td1" 
                style="width: 2.6583333in; border: thin solid black; font-size: 14px;">
                <p class="p2" 
                    style="text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s3" style="font-weight: bold; color: black; font-size: 14px;">Дата и орган 
                    регистрации</span></p>
            </td>
            <td class="td2" style="width: 4.5284724in; border: thin solid black;">
                <p class="p5" 
                    
                    style="margin-left: 0.09861111in; text-align: start; font-family: 'Times New Roman'; ">
                    <span class="s2" style="color: black; font-size: 14px;">МИФНС №46 21 мая 2015 г.</span></p>
            </td>
        </tr>
    </table>
    </div>
    </div>
    <!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function () {
            try {
                w.yaCounter27810159 = new Ya.Metrika({ id: 27810159,
                    clickmap: true,
                    trackLinks: true,
                    accurateTrackBounce: true
                });
            } catch (e) { }
        });

        var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/27810159" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
</asp:Content>
