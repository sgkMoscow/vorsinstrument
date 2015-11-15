﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="poisk_instrumenta.aspx.cs" Inherits="vorsinstrument.poisk_instrumenta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head><link rel="icon" href="http://vorsinstrument.ru/favicon.ico" type="image/x-icon">
<title>Поиск строительного инструмента</title>
<meta name="description" content="Ворсинструмент - Поиск строительного инструмента">
<meta name="keywords" content="Поиск строительного инструмента">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<!-- old -->
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!-- /old -->

<link href="/css/style.css?v=51" rel="stylesheet" type="text/css"> 


<%--СТИЛИ 2х кнопок: продолжить покупки и на главную--%>
<style type="text/css">
    
    .awesome,.awesome:visited{background:#222 url(alert-overlay.png) repeat-x;display:inline-block;padding:5px 10px 6px;color:#fff;text-decoration:none;-moz-border-radius:5px;-webkit-border-radius:5px;-moz-box-shadow:0 1px 3px rgba(0,0,0,0.5);-webkit-box-shadow:0 1px 3px rgba(0,0,0,0.5);text-shadow:0 -1px 1px rgba(0,0,0,0.25);border-bottom:1px solid rgba(0,0,0,0.25);position:relative;cursor:pointer;}
    .awesome:hover{background-color:#111;color:#fff;}
    .awesome:active{top:1px;}
    .small.awesome,.small.awesome:visited{font-size:11px;padding:;}
    .awesome,.awesome:visited,.medium.awesome,.medium.awesome:visited{font-size:13px;font-weight:bold;line-height:1;text-shadow:0 -1px 1px rgba(0,0,0,0.25);}
    .large.awesome,.large.awesome:visited{font-size:14px;padding:8px 14px 9px;}
    .green.awesome,.green.awesome:visited{background-color:#91bd09;}
    .green.awesome:hover{background-color:#749a02;}
    .blue.awesome,.blue.awesome:visited{background-color:#2daebf;}
    .blue.awesome:hover{background-color:#007d9a;}
    .red.awesome,.red.awesome:visited{background-color:#e33100;}
    .red.awesome:hover{background-color:#872300;}
    .magenta.awesome,.magenta.awesome:visited{background-color:#a9014b;}
    .magenta.awesome:hover{background-color:#630030;}
    .orange.awesome,.orange.awesome:visited{background-color:#ff5c00;}
    .orange.awesome:hover{background-color:#d45500;}
    .yellow.awesome,.yellow.awesome:visited{background-color:#ffb515;}
    .yellow.awesome:hover{background-color:#fc9200;}
    </style>
<%---------------------------%>
</head>
<!-- класс new-year для body - включение новогидних шняшек -->
<body onclick="closeMap(event);" class="" >
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

<div class="duty alert" id="rightContacts">
<div class="alert_layout">
    <%--<span title="закрыть" is_alert="1" class="close">закрыть</span>--%>
    <img src="images/callMe.png" width="150px"/>
<p class="title"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="callMe.aspx" >Вам перезвонить?</asp:HyperLink></p>

<div class="alert_text_layout">
 <p><img src="images/callMeMini.png" width="22px"/> 
 <span class="style2">8(495) 795-75-98</span><br/><br/>
 <img src="images/emailMini.gif" width="22px"/>&nbsp; <a href="mailto:info@vorsinstrument.ru?subject=Заказ в магазине ВорсИнструмент">Написать письмо</a><br/><br/>
 <br/>

<b>Ждём Ваших звонков!</b></p>
</div>

</div>
</div>
</div>
</div>
<div class="wrap">
<noindex>
<header class="">
<img src="/images/ny_slogan.png" alt="" class="ny-slogan">
<span itemscope itemtype="http://schema.org/ImageObject">
    <a href="Default.aspx">
    <img class="logo" src="resources/logo.PNG"
alt='Строительное инструмент ООО «Ворсинструмент»' 
itemprop="contentUrl"></a></span>
<div>
    <%--<img src="images/default_head.PNG" />--%>
</div>

<img src="images/Bg_menu.png" width="680"/>

</header>
<!-- Главное меню-->
<nav id="nav" class="mainMenu">
 
  <div class="ny-menu-bg"></div>
  <table id="nav">
    <tbody>
      <tr>

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
<p>Москва, 1-км Киевского шоссе, Бизнес-центр Румянцево<br /> м. Юго-Западная</p>
<p class="officePhone"><span>(916)</span> 902-88-55</p>
<p><a class="mapsLink" onClick="showMapBox(event, 'mapBox1');"><span>Карта проезда</span></a></p>
</section>
<section class="simpleBlock sale">
<h2 class="simpleTitle">Акции</h2>							<p>Только до 29 февраля компания  &quot;Ворсинструмент&quot; предоставляет скидки до 30% на биты производства Nox</p>
<p style="font-size: 16px"><a href="/4689/"><strong>CуПеР сКиДкИ !</strong></a></p>
</section>
                       
</noindex>
</div>

<div class="rightCol">

<%----------ЯНДЕКС ПОИСК НАЧАЛО----------%>

<div class="ya-site-form ya-site-form_inited_no" onclick="return {'action':'search.aspx','arrow':false,'bg':'transparent','fontsize':12,'fg':'#000000','language':'ru','logo':'rb','publicname':'Поиск vorsinstrument','suggest':false,'target':'_blank','tld':'ru','type':3,'usebigdictionary':true,'searchid':2222204,'webopt':false,'websearch':false,'input_fg':'#000000','input_bg':'#ffffff','input_fontStyle':'normal','input_fontWeight':'normal','input_placeholder':'Поиск инструмента','input_placeholderColor':'#000000','input_borderColor':'#ff0000'}">
         <form action="http://yandex.ru/sitesearch" method="get" target="_blank">
            <input type="hidden" name="searchid" value="2222204"/>
            <input type="hidden" name="l10n" value="ru"/>
            <input type="hidden" name="reqenc" value=""/>
            <input type="search" name="text" value=""/>
            <input type="submit" value="Найти"/>
          </form>
</div>
  <style type="text/css">
      .ya-page_js_yes .ya-site-form_inited_no { display: none; }
  </style>
  <script type="text/javascript">
      (function (w, d, c) { var s = d.createElement('script'), h = d.getElementsByTagName('script')[0], e = d.documentElement; if ((' ' + e.className + ' ').indexOf(' ya-page_js_yes ') === -1) { e.className += ' ya-page_js_yes'; } s.type = 'text/javascript'; s.async = true; s.charset = 'utf-8'; s.src = (d.location.protocol === 'https:' ? 'https:' : 'http:') + '//site.yandex.net/v2.0/js/all.js'; h.parentNode.insertBefore(s, h); (w[c] || (w[c] = [])).push(function () { Ya.Site.Form.init() }) })(window, document, 'yandex_site_callbacks');
  </script>     

<%----------ЯНДЕКС ПОИСК КОНЕЦ----------%>

<%--<form action="/search" method="get" id="searchFrm" class="searchMain" name="search">
<a class="btn" href="javascript:document.getElementById('searchFrm').submit();" 
    title="Искать" id="leftSearch">Искать</a>
<input class="catSearch" id="catSearch_main" name="search" type="text" value="Поиск инструмента (более 10 000 позиций)" onblur="javascript:if(this.value==''){this.value='Поиск инструмента (более 10 000 позиций)'};" onfocus="if(this.value=='Поиск инструмента (более 10 000 позиций)') {this.value='';}" autocomplete="off">
<input class="hiddenBtn" name="" type="submit">
<!--<a href="/advanced_search">Расширенный поиск</a>-->
<div class="autocomplete" id="autosuggestResults_main"></div>
</form>--%>

<!--Каталог разделов-->
<form id="form1" runat="server">
    <div>
     <div id="head">

  
   <style type="text/css" id="popupWindow">
#parent_popup {
   display:none; 
  background: #000;
  height: 100%;
  opacity: 0.9;
  position: fixed;
  width: 100%;
  z-index: 100;
  top: 0;
  left: 0;
}
#popup {
  display:none; 
  background: #000;
  height: 200px;
  position: fixed;
  opacity: 1.0;
  top: 100px;
  left: 40%;
  width: 300px;
}

#parent_popup_result {
   display:none; 
  background: #000;
  height: 100%;
  opacity: 0.9;
  position: fixed;
  width: 100%;
  z-index: 100;
  top: 0;
  left: 0;
}
#popup_result {
  display:none; 
  background: #000;
  height: 200px;
  position: fixed;
  opacity: 1.0;
  top: 100px;
  left: 40%;
  width: 300px;
}


a:hover {
	background		: #ffffff;	/*необходимо для IE6*/
	text-decoration	: none;
	color           :#CC6600;
	
	
}
a.tooltip span {
	display			: none; 
	padding			: 2px 3px; 
	margin-left		: -110px;
	margin-top      : 20px; 
	width			: 140px;
	text-decoration	: none;
}
a.tooltip:hover span {
	display			: inline; 
	position		: absolute; 
	background		: #fffdce; 
	border			: 1px solid #cccccc; 
	color			: #6c6c6c;
	text-decoration	: none;
}
</style>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: 11px;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: 11px;
        }
        .style1
        {
            color: #CC6600;
            text-decoration: none;
            font-size:11px;
        }
        .style2
        {
            color: #CC6600;
            font-size: 11px;
        }
    </style>



    <span style="font-size: 20px; color: #3366CC; font-family: 'Courier New', Courier, monospace">
 
    
    <div id="links" style="width:100%; height:30px; font-size: small;">
        <a href="Default.aspx">Главная</a> -> Поиск инструмента
        
        </div>
    
    
    
     <div id="ya-site-results" onclick="return {'tld': 'ru','language': 'ru','encoding': '','htmlcss': '1.x','updatehash': true}"></div>
 <script type="text/javascript">
     (function (w, d, c) {
         var s = d.createElement('script'), h = d.getElementsByTagName('script')[0];
         s.type = 'text/javascript';
         s.async = true; s.charset = 'utf-8';
         s.src = (d.location.protocol === 'https:' ? 'https:' : 'http:') + '//site.yandex.net/v2.0/js/all.js';
         h.parentNode.insertBefore(s, h);
         (w[c] || (w[c] = [])).push(function () { Ya.Site.Results.init(); })
     })(window, document, 'yandex_site_callbacks');
 </script>
    
    
      
           <!--Всплывающее окно НАЧАЛО----------------------->
<div id="parent_popup">
    
  <div id="popup" style="opacity:1.0;">
   
    <p>
      <table cellpadding="0" cellspacing="0" style="width:400px; background-color: white;" border="0">
            <tr>
                <td style="text-align:center;">
                    <table cellpadding="0" cellspacing="0" style="text-align:center;">
                        <tr>
                            <td class="auto-style10">
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                               
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align:left;">
                    <table cellpadding="0" cellspacing="0" class="auto-style9">
                        <tr>
                            <td class="auto-style12">
                                <asp:Image ID="PhotoZakaz" runat="server" Height="130px" ImageUrl="~/images/VRD_series/VRD-4.jpg" />
                            </td>
                            <td class="auto-style11">
                                <img alt="" class="auto-style11" src="images/line.jpg" /></td>
                            <td class="auto-style13"><strong><asp:Label ID="lblNameWindow" runat="server" Text="имя"></asp:Label></strong><br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                
                <td>
                    
                    <table cellpadding="0" cellspacing="0" class="auto-style9">
                        <tr>
                            <td>&nbsp;Ваши координаты:<br />
                                <%--   <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />--%>
                            
                            </td>
                           <td>
                           
                                <asp:TextBox ID="tbCoordinates" runat="server" Height="100px" Width="261px" BorderStyle="Solid" TextMode="MultiLine" BorderColor="#375C77" BorderWidth="1px"></asp:TextBox>
                              
                            <br/>
                                <%-- <asp:Image ID="ImageCaptcha" runat="server" ImageUrl="" />
                                <br/>
                                <asp:TextBox ID="tbCaptcha" runat="server" Width="120px" Height="20px" BorderStyle="Solid" BorderColor="#375C77" BorderWidth="1px"></asp:TextBox>
                                *введите код с картинки
                                --%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                  
                  
                
                      
                   
                      

                

                    <br/>
                    <br/>
                </td>
            </tr>
        </table>
        
    </p>
  </div>
</div>
    <!--Всплывающее окно КОНЕЦ------------------------>

               <!--Всплывающее окно результат заказа НАЧАЛО----------------------->
<div id="parent_popup_result">
    
  <div id="popup_result" style="opacity:1.0;">
   
    <p>
      <table cellpadding="0" cellspacing="0" style="width:400px; background-color: white;" border="0">
            <tr>
                <td style="text-align:center;">
                    <table cellpadding="0" cellspacing="0" style="text-align:center;">
                        <tr>
                            <td class="auto-style10">
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                               
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align:left;">
                    <table cellpadding="0" cellspacing="0" class="auto-style9">
                        <tr>
                            <td class="auto-style12">
                                <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl="~/images/VRD_series/VRD-4.jpg" />
                            </td>
                            <td class="auto-style11">
                                <img alt="" class="auto-style11" src="images/line.jpg" /></td>
                            <td class="auto-style13"><strong><asp:Label ID="Label2" runat="server" Text="имя"></asp:Label></strong><br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                
                <td>
                    
                    <table cellpadding="0" cellspacing="0" class="auto-style9">
                        <tr>
                            <td>&nbsp;Ваши координаты:<br />
                                <%--   <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />--%>
                            
                            </td>
                           <td>
                                <%--<asp:TextBox ID="TextBox1" runat="server" Height="100px" Width="261px" BorderStyle="Solid" TextMode="MultiLine" BorderColor="#375C77" BorderWidth="1px"></asp:TextBox>--%>
                            <br/>
                                <%-- <asp:Image ID="ImageCaptcha" runat="server" ImageUrl="" />
                                <br/>
                                <asp:TextBox ID="tbCaptcha" runat="server" Width="120px" Height="20px" BorderStyle="Solid" BorderColor="#375C77" BorderWidth="1px"></asp:TextBox>
                                *введите код с картинки
                                --%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                   <div id="Div3" style="margin-left:30%">
                    <%--<asp:Button ID="Button1" runat="server" BackColor="#CF4518" Font-Bold="True" 
                        Font-Italic="False" Text="Отправить заказ" ForeColor="#F9F9F9" Width="150px" Height="50px"  OnClick="btnSend_Click" />--%>
                        </div>
                            
                      
                   
                      

                

                    <br/>
                    <br/>
                </td>
            </tr>
        </table>
  
    </p>
  </div>
</div>
    <!--Всплывающее окно КОНЕЦ------------------------>
   
    </form>
     </div>
<!--Конец каталога разделов--> 
<!-- нет описания слева -->
<hr>                            
</div>

</div>
</div>
</div>
</div>

<div class="clearFooter"></div>
</div>

<footer>
<div class="footInside">
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
<a class="button smallest" title="выберите файл"><span class="inside"><input type="file" name="addfile[]">Обзор...</span></a>
<div class="inputBox">
<input class="text" type="text" value="" name="file[]" readonly="readonly">
</div>
</div>
<div class="elemBox file hide">
<a class="button smallest" title="выберите файл"><span class="inside"><input type="file" name="addfile[]">Обзор...</span></a>
<div class="inputBox">
<input class="text" type="text" value="" name="file[]" readonly="readonly">
</div>
</div>
<div class="elemBox file hide">
<a class="button smallest" title="выберите файл"><span class="inside"><input type="file" name="addfile[]">Обзор...</span></a>
<div class="inputBox">
<input class="text" type="text" value="" name="file[]" readonly="readonly">
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


<script type="text/javascript">
    function myFunction() {
        alert('Hi');
    }
    </script>
</noindex>
<iframe id="tmp" name="tmp" style="display: none" width="0" height="0" src="" border="0" frameborder="0"></iframe>
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
</body>

</html>
