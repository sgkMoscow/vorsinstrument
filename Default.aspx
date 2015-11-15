<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="vorsinstrument.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head runat=server>
<title>«Ворсинструмент» - интернет магазин строительного инструмента</title>
<meta name="description" content="Ворсинструмент - поставка более 22500 наименований строительного инструмента ...">
<meta name="keywords" content="«Ворсинструмент» интернет магазин строительного инструмента">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<!-- old -->
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon">

<!-- /old -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />

<link href="/css/jquery.fancybox.css?v=1" rel="stylesheet" type="text/css"> 
<%--<link href="/css/jquery.mobilyslider.css?v=1" rel="stylesheet" type="text/css">--%>  
<link href="/css/jquery.jcarousel.css?v=1" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="/javascripts/prototype.js?v=1"></script> 



<%--СЛАЙДЕР--%>
  <link rel="stylesheet" href="bxslider/jquery.bxslider1.css" type="text/css" />
  <script src="bxslider/jquery.min1.js"></script>
  <script src="bxslider/jquery.bxslider1.js"></script>
  <script src="bxslider/scripts1.js"></script>
<%---------------------------------------%>


<%--<script type="text/javascript" src="/javascripts/modernizr.min.js"></script> --%>
<script type="text/javascript">
    var popup_banner_show_time = '6500';
    var popup_banner_delay = '2500';
    </script>


<script type="text/javascript" src="/javascripts/main.js?v=2"></script> 
<script type="text/javascript" src="/javascripts/swfobject.js?v=1"></script> 
<script type="text/javascript" src="/javascripts/preview_templates.js?v=1"></script> 
<script type="text/javascript" src="/javascripts/jquery.jcarousel.min.js?v=1"></script> 

<script src="/javascripts/search_autosuggest.js?v=2" type="text/javascript"></script> 
<script src="/javascripts/main_new.js?v=9" type="text/javascript"></script> 
<script src="/javascripts/jquery.placeholder.min.js?v=1" type="text/javascript"></script> 
<script src="/javascripts/jquery.fancybox.js?v=1" type="text/javascript"></script> 
<%--<script src="/javascripts/jquery.mobilyslider.js?v=1" type="text/javascript"></script> --%>
<script src="/javascripts/jquery.jcarousel.js?v=1" type="text/javascript"></script> 
<script src="/javascripts/jquery.dropdown.js?v=3" type="text/javascript"></script> 
<script src="/javascripts/crem.js" type="text/javascript"></script> 
<link href="/css/blizter.css" rel="stylesheet" type="text/css"/> 

<!--[if lte IE 6]>
<link href="/css/style_ie6.css?v=2" rel="stylesheet" type="text/css">
<link href="/javascripts/highslide-4.1.13/highslide-ie6.css?v=1" rel="stylesheet" type="text/css">
<script src="/javascripts/jquery.reject.js?v=1" type="text/javascript"></script>
<script type="text/javascript">
    $(function(),
            display: ['firefox','opera','chrome','safari','msie'],
            imagePath: '/images/browsers/'
        });
        return false;
    });
    </script>
<![endif]-->
<!--[if IE 8]>
<link href="/css/style_ie8.css?v=2" rel="stylesheet" type="text/css">
<![endif]-->
<!--[if lte IE 8]>
<script src="/javascripts/html5.js?v=1" type="text/javascript"></script>
<![endif]-->
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
        .style2
        {
            font-size: medium;
            color: #EE3D00;
        }
    </style>

<!--

<link href="/javascripts/highslide-4.1.13/highslide.css?v=1" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="/javascripts/highslide-4.1.13/highslide-full.js?v=1"></script> 
<script type="text/javascript">
    hs.graphicsDir = '/javascripts/highslide-4.1.13/graphics/';
    hs.wrapperClassName = 'wide-border';
    hs.minwidth = '800px';
    hs.minheight = '800px';
    hs.Expander.prototype.onMouseOut = function (sender) {
        sender.close();
    };
    hs.Expander.prototype.onAfterExpand = function (sender) {
        if (!sender.mouseIsOver) sender.close();
    };
    function mouseOver(opener) {
        opener.hasMouseOver = true;
        setTimeout(function () {
            if (opener.hasMouseOver) {
                opener.onclick();
                opener.hasMouseOver = false;
            }
        }, 10);
    }
    function mouseOut(opener) {
        opener.hasMouseOver = false;
    }
    </script>


<script type="text/javascript" src="http://userapi.com/js/api/openapi.js?49"></script>

<script type="text/javascript">

    var root_id = "{$content.root_id}";
    var isRightToLeft_ = true;

    jQuery.noConflict();
    jQuery(function () {
        // new
        jQuery(window).load(function () {
            footH();
            picCatTwoLevel();
            overlayHeight();
            fixPanel();
            menuHover();
            lastClass();
            popup_rotation();
        });
        jQuery(window).scroll(function () {
            fixPanel();
        });
        fileInput();
        styledSelect();
        visibilityCatalog();
        seoOpen();
        mapClose();
        buttonDrop();
        addMoreFile();
        tabSwitch();
        dutyinner();
        dutyclose();
        jQuery('.searchMain input[placeholder], .topFix .scrollBox input[placeholder]').placeholder();
        jQuery('.slider').mobilyslider({
            autoplay: false,
            autoplaySpeed: 4000,
            transition: 'fade',
            animationSpeed: 800,
            bullets: true,
            arrowsHide: false
        });

        jQuery('.picCatalog .dropShadow ul, .extraProduct ul').jcarousel({
            scroll: 1
        });
        trClick();
        autosuggestForSearch();
    });
    function show_survey_popup(id) {
        var mycookie = document.cookie.split('; ');
        var flag = false;
        for (var i = 0; i < mycookie.length; i++) {
            if (mycookie[i].substr(0, 15) == 'site_survey_js') {
                var ids = (mycookie[i].substr(16).split('%2C'));

                for (var j = 0; j < ids.length; j++)
                    if (ids[j] != id) flag = true
                }
            }

            if (flag || !ids) {
                window.open('/survey_popup/?id=' + id, '_blank', 'width=590,height=680,toolbar=0,scrollbars=1');
            }
        }
</script> 
</head>
<!-- класс new-year для body - включение новогидних шняшек -->
<%--<body onclick="closeMap(event);" class="" >--%>
<div id="img_cont">
<div id="image_loading" style="display:none">Загрузка ...</div>
<div id="image" style="display:none"><img src=""></div>
</div>
<div id="basket" class="basketMove" onmousedown="basket_moving=1;" onmousemove="basketMove();">
КОРЗИНА
</div>
<div id="ajax_log" style="position:absolute; left:100px; top:100px; width:200px; height:100px; z-index:10000; background-color:#FFFFFF; visibility:hidden; border: solid 1px #000000;">
AJAX LOG
</div>
<!--Плавающее окно акции справа -->

<div class="duty alert">
<div class="alert_layout">
<%--<span title="закрыть" is_alert="1" class="close">закрыть</span>--%>
    <img src="images/callMe.png" width="150px"/>
<p class="title"><asp:HyperLink runat="server" NavigateUrl="callMe.aspx" >Вам перезвонить?</asp:HyperLink></p>

<div class="alert_text_layout">
 <p><img src="images/callMeMini.png" width="22px"/> 
 <span class="style2">8(495) 795-75-98</span><br/><br/>
 <img src="images/emailMini.gif" width="22px"/>&nbsp; <a href="mailto:info@vorsinstrument.ru?subject=Заказ в магазине ВорсИнструмент">Написать письмо</a><br/><br/>
 <br/>

<b>Ждём Ваших звонков!</b></p>
</div>

</div>
</div>
<div class="wrap">
<noindex>
<header class="">
<img src="/images/ny_slogan.png" alt="" class="ny-slogan">
<span itemscope itemtype="http://schema.org/ImageObject">
   
    <img class="logo" src="resources/logo.PNG"
alt='Строительное инструмент ООО «Ворсинструмент»' 
itemprop="contentUrl"></span>
<div>

</div>

<img src="images/Bg_menu.png" width="680"/>

</header>


<nav id="nav" class="mainMenu">
 
  <div class="ny-menu-bg"></div>
  <table id="nav">
    <tbody>
      <tr>
        <%--<td class="home">
          <div class="item">
            <a href="/catalog/6581" class="hover">
              <span>Главная</span>
            </a>
          </div>
        </td>--%>
        <td>
          <div class="item">
            <a href="Stock.aspx" class="first hover" id="d200">Акции</a>
          </div>
        </td>
        <td>
          <div class="item">
            <a href="Default.aspx" class="first" id="d4752">Каталог товаров</a>
          </div>
        </td>
        <td>
          <div class="item">
            <a href="Buy.aspx" class="first" id="d3369">Применение</a>
          </div>
        </td>
        <td>
          <div class="item">
            <a href="Contacts.aspx" class="first" id="d6517">Контакты</a>
          </div>
        </td>
      
      </tr>
    </tbody>
  </table>
  <script type="text/javascript" src="/javascripts/menu.js?v=5"></script>
</nav>
<!-- Главное меню конец-->
</noindex>
<div class="shadowBox">
<div class="shadowInside">
<div class="colWrap">
<div class="colWrapInside main">
<!-- left column -->
<div class="leftCol">
<noindex>
<section class="simpleBlock sendOrderBox">
<h2 class="simpleTitle">Пришлите заказ</h2>
<p class="sendOrder">Отправьте Ваш заказ в <strong>любом формате</strong>: Word, Excel, PDF ...</p>
<p class="textCenter marginNone">
<span class="buttonShadow inline"><a class="button active bgBot loadOrderDrop" href="ZakazOnline.aspx">Пришлите заказ</a></span>
</p>
</section>
<section class="simpleBlock">
<h2 class="simpleTitle">Офисы в Москве</h2>
<p class="officeDesc"><span class="red">Центральный офис:</span></p>
<p>Москва, 1-км Киевского шоссе, Бизнес парк "Румянцево"<br /> м. Юго-Западная</p>
<p class="officePhone"><span>8 (495)</span> 795-75-98</p>
<p><a class="mapsLink" onClick="showMapBox(event, 'mapBox1');"><span>Карта проезда</span></a></p>
</section>


<%--Раздел "Акции и скидки"--%>
<section class="simpleBlock sale">
<h2 class="simpleTitle">Акции</h2>	
<p>При оптовой покупке на сумму от 100 000 руб  вы получаете скидку 25% и карту Друга &quot;ВорсИнструмент&quot;</p>
<p><img src="images/stock/2.PNG" width="200px"/></p>
<p style="font-size: 16px"><a href="Stock.aspx"><strong>Подробнее</strong></a></p>
</section>
<%------------------------%>


<!-- Секция "Помощь клиенту" -->
<!--
<section class="simpleBlock ">
<h2 class="simpleTitle">Помощь клиенту</h2>							
<ul class="helpList">
<li><a href="/partners/"><strong>Клиентам и партнерам</strong></a></li>
<li><a href="/contacts/moscow">Где купить</a></li>
<li><a href="/partners/3368">Как купить</a></li>
<li><a href="/archive/news/">Новости</a></li>
<li><a href="/files/katalog_secured.pdf">Электронный каталог (36,6 МБ)</a></li>
<li><a href="/price_list">Скачать прайс-лист</a></li>
<li><a onclick="window.open('http://www.sms-tehno.ru/catalog','Запасные части','scrollbars=yes'); return false;" href="http://www.sms-tehno.ru/catalog">Запасные части</a></li>
</ul>
<p><span class="buttonShadow big"><a class="button big" onclick="get_sale_file();" href="javascript:void(0);"><span class="inside">распродажа товаров</span></a></span></p>
</section>  
-->                          
</noindex>
</div>
<!-- /left column -->
<!-- right column -->


<div class="rightCol">
<%--ПОИСК---------------------------------%>
<%--<form action="/search" method="get" id="searchFrm" class="searchMain" name="search">
<a class="btn" href="javascript:document.getElementById('searchFrm').submit();" title="Искать">Искать</a>
<input class="catSearch" id="catSearch_main" name="search" type="text" value="Поиск инструмента (более 10 000 позиций)" onblur="javascript:if(this.value==''){this.value='Поиск инструмента (более 10 000 позиций)'};" onfocus="if(this.value=='Поиск инструмента (более 10 000 позиций)') {this.value='';}" autocomplete="off">
<input class="hiddenBtn" name="" type="submit">
<!--<a href="/advanced_search">Расширенный поиск</a>-->
<div class="autocomplete" id="autosuggestResults_main"></div>
</form>--%>
<%--СЛАЙДЕР---------------------%>
<ul class="bxslider">
  <li><a href="gun_1.aspx"><img src="bxslider/news/news_1.jpg" /></a></li>
  <li><a href="Drill.aspx"><img src="bxslider/news/news_2.jpg" /></a></li>
  <li><a href="Bits.aspx"><img src="bxslider/news/news_3.jpg" /></a></li>
</ul>

<script type="text/javascript">
    $(document).ready(function () {
        $('.bxslider').bxSlider();
    });
</script>

<%------------------------------%>
<!--<div id="CPMTicker" style="position:relative; width:100%; overflow:hidden; left:0; display:block;"><span id="news" style="position:relative;white-space:nowrap; visibility:hidden; width:100%; display:block;"><a href="/catalog/02/025/0253">Супер акция!!! Скидки 35% на текстильные стропы!&nbsp;&gt;&gt;</a></span></div>-->
<!--<marquee bgcolor="#fff" direction="left" behavior="scroll" scrollamount="7">
</marquee>-->
<!--<ul id="ticker01"><li></li></ul>-->
<!--<img src="/images/text.gif" alt=""><br><br>-->

<ul class="picCatalog">
<li>
<a href="Bits.aspx">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="images/main_catalog/bits.png" alt="Биты" itemprop="contentUrl"></span><br>
Биты
</a>
</li>
<li>
<a href="Drill.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/drill.png" alt="Буры" itemprop="contentUrl"></span><br>
Буры
</a>
</li>
<li>
<a href="Diamond.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/diamond.png" alt="Алмазная техника" 
        itemprop="contentUrl"></span><br>
Алмазная техника
</a>
</li>
<li>
<a href="Measuring_tool.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/measuring_tool.png" 
        alt="Измерительный инструмент" itemprop="contentUrl"></span><br>
Измерительный инструмент
</a>
<%--<!-- Выпадающее меню "Измерительный инструмент"-->
<div class="dropShadow ">
<div class="dropShadowInside">
<ul>
<li>
<a href="/catalog/02/8184/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/Verevka_55.jpg" alt="Свёрла" itemprop="contentUrl"></span>
Свёрла
</a>
</li>
<li>
<a href="/catalog/02/021/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/gruzopodemnoe_dlya_stroyki_55.jpg" alt="Коронки" itemprop="contentUrl"></span>
Коронки
</a>
</li>
<li>
<a href="/catalog/02/027/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/Dinamometry_55.jpg" alt="Пилки для лобзика" itemprop="contentUrl"></span>
Пилки для лобзика
</a>
</li>
<li>
<a href="/catalog/02/023/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/domkraty_55.jpg" alt="Пики и зубила" itemprop="contentUrl"></span>
Пики и зубила
</a>
</li>
<li>
<a href="/catalog/02/022/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/lebedki_55.jpg" alt="Пильные диски" itemprop="contentUrl"></span>
Пильные диски
</a>
</li>
<li>
<a href="/catalog/02/026/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/montazhnaya_osnastka_zahvaty_takelazh_55.jpg" alt="Столярный инструмент" itemprop="contentUrl"></span>
Столярный инструмент
</a>
</li>
<li>
<a href="/catalog/02/4185/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/podemno-transportnaya_tehnika_55.jpg" alt="Крепёжный инструмент" itemprop="contentUrl"></span>
Крепёжный инструмент
</a>
</li>
<li>
<a href="/catalog/02/025/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/stropy_55.jpg" alt="Пистолеты для пены и герметика" itemprop="contentUrl"></span>
Пистолеты для пены и герметика
</a>
</li>
<li>
<a href="/catalog/02/024/">
<span itemscope itemtype="http://schema.org/ImageObject"><img src="/files/test123/tal_55.jpg" alt="Абразивы" itemprop="contentUrl"></span>
Абразивы
</a>
</li>
</ul>
</div>
</div>
<span class="dropArrow"></span>
<!-- /drop catalog -->--%>
</li>
<li>
<a href="Small_tool.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/small_tool.png" alt="Слесарный инструмент" 
        itemprop="contentUrl"></span><br/>
Слесарный инструмент
</a>
</li>
<li>
<a href="Drills.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/drills.png" alt="Свёрла" itemprop="contentUrl"></span><br>
Свёрла
</a>
</li>
<li class="cl"></li>
<li>
<a href="Collet.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/collet.png" alt="Коронки" itemprop="contentUrl"></span><br>
Коронки
</a>

</li>
<li>
<a href="Sawing.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/sawing.png" alt="Пилки для лобзика" 
        itemprop="contentUrl"></span><br>
Пилки для лобзика
</a>

</li>
<li>
<a href="Spades.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/spades.png" alt="Пики и зубила" 
        itemprop="contentUrl"></span><br>
Пики и зубила
</a>
</li>
<li>
<a href="Blade.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/blade.png" alt="Пильные диски" 
        itemprop="contentUrl"></span><br>
Пильные диски
</a>
</li>
<li>
<a href="Ax.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/ax.png" alt="Столярный инструмент" 
        itemprop="contentUrl"></span><br>
Столярный инструмент
</a>
</li>
<li>
<a href="Fastening_tool.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/fastening_tool.png" alt="Крепёжный инструмент" 
        itemprop="contentUrl"></span><br>
Крепёжный инструмент
</a>
</li>
<li class="cl"></li>
<li>
<a href="Gun.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/gun.png" alt="Пистолеты для пены и герметика" 
        itemprop="contentUrl"></span><br>
Пистолеты для пены и герметика
</a>
</li>
<li>
<a href="Circle.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/circle.png" alt="Абразивы" itemprop="contentUrl"></span><br>
Абразивы
</a>
</li>
<li>
<a href="Painting_tools.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/painting_tools.png" alt="Малярный инструмент" 
        itemprop="contentUrl"></span><br>
Малярный инструмент
</a>
</li>
<li>
<a href="Hacksaw.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/hacksaw.png" alt="Полотна для ножовок" 
        itemprop="contentUrl"></span><br>
Полотна для ножовок
</a>
</li>
<li>
<a href="Fasteners.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/fasteners.png" alt="Крепёж" 
        itemprop="contentUrl"></span><br>
Крепёж
</a>
</li>
<li>
<a href="stands_1.aspx">
<span itemscope itemtype="http://schema.org/ImageObject">
    <img src="images/main_catalog/stands.png" alt="Стенды и каталоги" 
        itemprop="contentUrl"></span><br>
Стенды и каталоги
</a>
</li>

</ul>                        

<hr>                            
</div>
</div>
</div>
</div>
</div>
<!--***********************************************-->
<!--Большой раскрывающийся каталог товаров начало -->
<!--***********************************************-->

<div class="simpleShadow">
<h1 class="catTitle">Каталог товаров 
<%--<a class="visibilityCat" href="#">Развернуть</a>--%>
</h1>
<!--<div class="hiddenBlock"> -->

<ul class="textCatalog category">
<li class="left">


<p>

<a href="Bits.aspx">Биты&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Bits.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/bits_min.png" alt="Биты" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="bits_1.aspx">Биты для кровельных саморезов&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="bits_2.aspx">Биты INTENSA&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="bits_3.aspx">Биты GERT&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="bits_4.aspx">Биты NOX&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="bits_5.aspx">Магнитные переходники&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="bits_6.aspx">Наборы бит&nbsp;<span class="qty">(1)</span></a>
</li>

<li>
</li>
</ul>
</li>
<li class="cl"></li>
<li class="right">
<p>
<a href="Diamond.aspx">Алмазная техника&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Diamond.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/diamond_min.png" alt="Алмазная техника" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="diamond_disc.aspx">Диски отрезные алмазные "Hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li>
<li class="left">
<p>
<a href="Measuring_tool.aspx">Измерительный инструмент&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Measuring_tool.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/measuring_tool_min.png" alt="Измерительный инструмент" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="measuring_tool_1.aspx">Рулетки "Metric", "Metric+", "Metric Style"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="left">
<p>
<a href="Drill.aspx">Буры&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Drill.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/drill_min.png" alt="Буры" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="drill_1.aspx">Свёрла по бетону "Hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drill_2.aspx">Свёрла по бетону "RENNBOHR"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drill_3.aspx">Свёрла по бетону "Optim"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>

<li class="right">
<p>
<a href="Small_tool.aspx">Слесарный инструмент&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Small_tool.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/small_tool_min.png" alt="Слесарный инструмент" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="small_tool_1.aspx">Кусачки боковые "Targ American Type"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_2.aspx">Плоскогубцы комбинированные "Targ American Type"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_3.aspx">Наборы отвёрток "Nox"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_4.aspx">Отвёртки шлиц "Nox"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_5.aspx">Отвёртки крестовые "Nox"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_6.aspx">Отвёртки-держатели для бит "Nox" &nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_7.aspx">Молотки&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_8.aspx">Молотки-гвоздодёры&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_9.aspx">Молотки специальные&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_10.aspx">Кувалды&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_11.aspx">Молотки с деревянной ручкой&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="small_tool_12.aspx">Ключи угловые шестигранные TORX&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li>			<li class="left">
<p>
<a href="Drills.aspx">Свёрла&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Drills.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/drills_min.png" alt="Свёрла" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="drills_1.aspx">Cверла по Бетону с чёрной канавкой "HAGWERT"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_2.aspx">СВЁРЛА ПО БЕТОНУ POWER с ЦИЛИНДРИЧЕСКИМ ХВОСТИКОМ "RENNBOHR"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_3.aspx">СВЁРЛА ПО БЕТОНУ HIT с цилиндрическим хвостиком "RENNBOHR"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_4.aspx">СВЕРЛО-фреза "hAGWERT"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_5.aspx">СВЕРЛА ПО ДЕРЕВУ ПЕРОВЫЕ "HAGWERT"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_6.aspx">СВЕРЛА ПЕРОВЫЕ LONG "HAGWERT"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_7.aspx">Сверла по дереву балочные "HAGWERT"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_8.aspx">Cверло по дереву спиральное с ограничителем "HAGWERT"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_9.aspx">Сверла по дереву перовые TURBO "RENNBOHR"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_10.aspx">Сверла по металлу Dinamic P9M3 в промупаковке "Hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_11.aspx">Сверла по металлу Dinamic-TIN P9M3 "Hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_12.aspx">Сверло по металлу Power-Сobalt P6M5K5 "Hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_13.aspx">Сверла по металлу Dinamic-Long P9M3 "Hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_14.aspx">Сверла по металлу Dinamic P9M3 "Hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_15.aspx">Свёрла по металлу METAL фрезерованные Р6АМ5 "RennBohr"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_16.aspx">Свёрла по кафелю и стеклу "hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_17.aspx">СверлА по керамике "RennBohr BY Diager"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="drills_18.aspx">Специальные сверла "hagwert"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="right">
<p>
<a href="Collet.aspx">Коронки&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Collet.aspx" itemscope itemtype="http://schema.org/ImageObject">
<img src="/images/main_catalog/collet_min.png" alt="Коронки" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="collet_1.aspx">Коронки по бетону&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="collet_2.aspx">Коронки по металлу&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li>			
<li class="left">
<p>
<a href="Sawing.aspx">Пилки для лобзика&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Sawing.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/sawing_min.png" alt="Пилки для лобзика" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="sawing_1.aspx">MPS&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="sawing_2.aspx">RUNEX&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
</li>
<li class="cl"></li>
<li class="left">
<p>
<a href="Spades.aspx">Пики и зубила&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Spades.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/spades_min.png" alt="Пики и зубила" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="spades_1.aspx">ПИКИ, ЗУБИЛА "OPTIM" &nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="spades_2.aspx">ПИКИ,  ЗУБИЛА "RENNBOHR", "HAGWERT"&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="right">
<p>
<a href="Blade.aspx">Пильные диски&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Blade.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/blade_min.png" alt="Пильные диски" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="blade_1.aspx">Диски пильные по дереву&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="blade_2.aspx">Диски пильные по ламинату&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="blade_3.aspx">Диски пильные по алюминию&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li><li class="left">
<p>
<a href="Ax.aspx">Столярный инструмент&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Ax.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/ax_min.png" alt="Столярный инструмент" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="ax_1.aspx">ТОПОРЫ&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="ax_2.aspx">НОЖОВКИ ПО ДЕРЕВУ&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="right">
<p>
<a href="Fastening_tool.aspx">Крепёжный инструмент&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Fastening_tool.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/fastening_tool_min.png" alt="Крепёжный инструмент" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="fastening_tool_1.aspx">Заклёпочники&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="fastening_tool_2.aspx">СТЕПЛЕРЫ&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="fastening_tool_3.aspx">СКОБЫ&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li>
<li class="left">
<p>
<a href="Gun.aspx">Пистолеты для пены и герметика&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Gun.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/gun_min.png" alt="Пистолеты для пены и герметика" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="gun_1.aspx">ПИСТОЛЕТЫ ДЛЯ МОНТАЖНОЙ ПЕНЫ&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="gun_2.aspx">ПИСТОЛЕТЫ ДЛЯ ГЕРМЕТИКА&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="right">
<p>
<a href="Circle.aspx">Абразивы&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Circle.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/circle_min.png" alt="Абразивы" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="circle_1.aspx">Насадки под абразивный диск&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="circle_2.aspx">Диски лепестковые абразивные&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="circle_3.aspx">Круги абразивные&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="circle_4.aspx">Сетка абразивная &nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li><li class="left">
<p>
<a href="Painting_tools.aspx">Малярный инструмент&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Painting_tools.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/painting_tools_min.png" alt="Малярный инструмент" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="painting_tools_1.aspx">Шпатели резиновые и металлические&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
<a href="painting_tools_2.aspx">Ножи универсальные и лезвия к ним&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="right">
<p>
<a href="Hacksaw.aspx">Полотна для ножовок&nbsp;<span class="qty">(1)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="Hacksaw.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/hacksaw_min.png" alt="Полотна для ножовок" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="hacksaw_1.aspx">Полотна для ножовок по металлу&nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li>			<li class="left">
<p>
<a href="Fasteners.aspx">Крепёж&nbsp;<span class="qty">(1)</span></a>
</p>
<span class="catPic hoverCatPic">
<a href="Fasteners.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/fasteners_min.png" alt="Крепёж" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="Fasteners.aspx">Возможен заказ от 50 рублей &nbsp;<span class="qty">(1)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="right">
<p>
<a href="stands_1.aspx">Стенды и каталоги&nbsp;<span class="qty">(2)</span>
</a>
</p>
<span class="catPic hoverCatPic">
<a href="stands_1.aspx" itemscope itemtype="http://schema.org/ImageObject"><img src="/images/main_catalog/stands_min.png" alt="Окрасочное оборудование" itemprop="contentUrl"></a>
</span>
<div class="notice"></div>
<ul>
<li>
<a href="stands_1.aspx">Стенды&nbsp;<span class="qty">(2)</span></a>
</li>
<li>
</li>
</ul>
</li>
<li class="cl"></li><li class="left">
<%--*********************************************************************--%>

<li class="right">
</li>
<li class="cl"></li></ul>       
<%--<p class="marginNone"><a class="visibilityCat" href="#">Свернуть</a></p> --%>    
<!--</div> Конец hidden block-->

</div>
<!--***********************************************-->
<!-- Большой раскрывающийся каталог товаров конец -->
<!--***********************************************-->




<div class="clearFooter"></div>
</div>

<footer>
<div class="footInside">
<!-- slider -->
<!-- /slider -->
<div class="seoBlock">
<div style="text-align:center;"><h2>Строительный инструмент более 10 000 наименований</h2></div>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000"><font size="2">Компания ООО “Ворсино Инструмент” – 10 лет на Российском рынке профессионального ручного инструмента, является представителем крупнейших заводов Европы:</font></font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>RennBohr</strong> - Буры с высоким ресурсом – до 1000 отверстий в бетоне, ударные сверла по бетону, сверла по металлу с заточкой 124 градусов – сверление без накернивания, сверла по стеклу и керамической плитке . Буры пр-ва Франции (завод DIAGER)</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>GERT</strong> – Качественные наконечники-биты, изготовленные метом фрезеровки из кованный заготовок , после закалки охлаждены азотом. Пр-во Германия</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>MPS</strong> – Профессиональные пилки и сабельные полотна для электроинструмента, коронки Би-металл. Пр-во Германия</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>CROSSWEHR</strong> - Ручные ножовки по мокрой древесине, для стусла, для чистого распила, для ламинированных изделий. Производство Швеция.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000"><font size="2">Товары, выпускаемые под собственными торг.марками в Тайване на европейском оборудовании:<br/><br/>

    <strong>HAGWERT</strong>  – Буры и сверла по бетону, пики и долота, сверла по металлу, Со-5% сверла, сверла-фрезы, конические сверла, сверла по стеклу и керамической плитке 2-х и 4-х граные, сверла по дереву перовые, спиральные, алмазные диски.</font></font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>NOX</strong> – широкий ассортимент бит, отвертки. Особенность – все биты от 50 мм – намагничены.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>RUNEX</strong> - пилки для электроинструмента, пильные диски по дереву, ламинату, алюминию, ножовки по дереву.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>STELGRIT</strong> – заклепочники, силовые заклепочники, мебельные степлеры и скобы.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>STRIKE</strong>– молотки, кувалды, колуны.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>NORK</strong> – рожково-накидные и рожковые ключи, наборы из них.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>FOMERON</strong> – пистолеты для монтажной пены и геметиков.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">А также широкий ассортимент товара общего строительного назначения: шпатели из нерж.стали 
    <strong>FLAT</strong>, резиновые шпатели, пассатижи и бокорезы <strong>TARG</strong>, рулетки 
    <strong>Metric</strong>, строительные уровни <strong>METRIC TILER</strong>, абразивные ленты и круги 
    <strong>ZIFLEX</strong>.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">Предлагаемый нашей компанией ручной инструмент Европейского качества соответствующий Российским государственным стандартам. Оптимальное соотношение цена/качество, русско-язычное описание товара, штрих-кодирование дает возможность для процветания наших партнеров на всей территории России.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">У нас гибкая система скидок и индивидуальных подход к каждому клиенту</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">Осуществляется доставка товара до клиента не только по Москве, но и по Московской области. А также до терминалов Транспортных компаний.</font></p>
</div>
<div class="greyAbout">
<div class="aboutInside">
<div class="left">
<p class="copy">&copy; ООО "Ворсино Инструмент" 2012 год</p>
<p>Москва, 1-км Киевского шоссе, Бизнес-центр Румянцево<br /> м. Юго-Западная</p>
</div>
<div class="right">
<p class="phone">(495) 795-75-98<br>
<p class="mail"><a href="mailto:info@vorsinstrument.ru">info@vorsinstrument.ru</a></p>
</div>
<nav class="bottomMenu">
<table cellspacing="0">
<!-- Главное меню-->
<tr>

<td><a href="Stock.aspx">Акции</a></td>
<td><a href="Сatalog.aspx">Каталог товаров</a></td>
<td><a href="Buy.aspx">Применение</a></td>
<td><a href="Contacts.aspx">Контакты</a></td>

<!-- 
<td><a href="/price_list">Прайс-лист</a></td>
<td><a href="/6517">Ремонт</a></td>
<td><a href="/6516">Доставка</a></td>
<td><a href="/about">О компании</a></td>
-->
</tr>
</table>
<div id="hidden_main_menu"></div>
</nav>
</div>
</div>

</div>
</footer>

<div id="loadOrder" class="overlay loadOrder">
<div class="dropShadow">
<div class="dropShadowInside">
<a class="button bgBot active" href="#">Пришлите заказ</a>
<a class="button active topLoadBtn" href="#"><span class="inside"><span class="ico load"></span>Загрузить заказ</span></a>
<h2 class="dropTitle">Заказ в произвольной форме</h2>
<div id='fastorder_top_msg'></div>
<div id='fastorder_form'>




<p>Загрузите файл в <strong>любом формате</strong>, содержащий необходимые Вам товарные позиции:<span style="color: #D83801;">*</span></p>
<form action="/fastorder" method="post" id="fastorder_frm" name="fastorder_frm" enctype='multipart/form-data' target="send_form">
<input type="hidden" name="page" value="" />
<div class="elemBox file">
<a class="button smallest" title="выберите файл">
<span class="inside"><input type="file" name="addfile[]">Обзор...</span></a>

<div class="inputBox"><input class="text" type="text" value="" name="file[]" readonly="readonly"></div>

</div>
<div class="elemBox file hide"><a class="button smallest" title="выберите файл"><span class="inside"><input type="file" name="addfile[]">Обзор...</span></a>
<div class="inputBox"><input class="text" type="text" value="" name="file[]" readonly="readonly"></div>
</div>
<div class="elemBox file hide"><a class="button smallest" title="выберите файл"><span class="inside"><input type="file" name="addfile[]">Обзор...</span></a>

<div class="inputBox"><input class="text" type="text" value="" name="file[]" readonly="readonly">
</div>
</div>
<p><a class="addMoreFile" href="#">Добавить ещё файл</a></p>
<hr>
<div id='fastorder_msg'><p class="red">Оставьте Ваши контактные данные:</p></div>
<label>Телефон<span>*</span></label>
<input name="phone" type="tel">
<label>Ф.И.О.<span>*</span></label>
<input name="fio" type="text">
<label>E-mail</label>
<input name="email" type="email">
<textarea placeholder="Ваш комментарий..." name="description"></textarea>
<p class="formGlobalDesc"><span class="red">*</span> поля, обязательные для заполнения</p>
<p class="textCenter">
<span class="buttonShadow small inline"><a class="button small blue" href="javascript:void(0);" onclick="document.getElementById('fastorder_frm').submit(); return false;"><span class="inside">Отправить заявку</span></a></span>
</p>
</form>
</div>
<span class="close" title="закрыть">закрыть</span>
</div>
</div>
</div>
<!-- /load order -->
<iframe id="send_form" name="send_form" src='about:blank' width=0 height=0 border=0 style='visibility:hidden'></iframe>

<div id="drop_map_show"></div>
<noindex>
<div id="message" style="display: none; position: absolute; top: 19%; left: 30%; z-index: 90000">
<div style="font-weight: bold; border: 2px solid #E1E1E1; padding: 10px 20px; width: 200px; background-color: #FBFBFB">
<div align="right"><a href="#" onclick="$('message').style.display = 'none'; return false;">Закрыть</a></div>
</div>
</div>
<div id="geomap" style="display:none; position:absolute; z-index:1000; background:#fff;">
<div style="float:right; padding-right:25px; padding-bottom: 6px"><a href="#" onclick="showMap();return false">закрыть</a></div>
<span>СТРОЙМАШСЕРВИС В РЕГИОНАХ</span>
<div id="flashcontent"><div style="width: 400px"><strong><p>Для просмотра карты необходимо установить Flash Player!<br><br>Нажмите <a href="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" target="tmp">ссылку</a>, чтобы произвести установку.<br>После окончания установки перезагрузите страницу.</p></strong></div></div>
<script type="text/javascript">
    var so = new SWFObject("/images/map7.swf", "flashcontent", "900", "504", "9", "#FFFFFF");
    so.addVariable("tURL", "/xmlmap.php");
    so.write("flashcontent");
		</script>
</div>


<script>
    function showMap() {
        Position.prepare();
        if ($('geomap')) {
            $('geomap').style.top = (getClientHeight() - 504) / 2 + "px";
            $('geomap').style.left = (getClientWidth() - 900) / 2 + "px";
        }
        Element.toggle('geomap');
    }
    function getClientWidth() {
        return document.compatMode == 'CSS1Compat' && !window.opera ? document.documentElement.clientWidth : document.body.clientWidth;
    }
    function getClientHeight() {
        return document.compatMode == 'CSS1Compat' && !window.opera ? document.documentElement.clientHeight : document.body.clientHeight;
    }
</script>
</noindex>
<iframe id="tmp" name="tmp" style="display: none" width="0" height="0" src="" border="0" frameborder="0"></iframe>
</body>
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
</html>
