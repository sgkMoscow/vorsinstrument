
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sverlo_po_steklu_Hagwert_6mm.aspx.cs" Inherits="vorsinstrument.Sverlo_po_steklu_Hagwert_6mm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head><link rel="icon" href="http://vorsinstrument.ru/favicon.ico" type="image/x-icon">
<title>C����� �� ������, ������ �� ��������, ������ �� ������, ������ �� ������� HAGWERT ������</title>
<meta name="description" content="������ +�� ������, ������ �� ��������, ������ �� �������, ������  hagwert  ������">
<meta name="keywords" content="������ +�� ������, ������ +��� ����������� +�� ������ ������ ������ +�� ��������, ����� ����� +�� ������, ������ +�� ������ ����, ������ hagwert +�� ��������, ������ +�� ������ +��� ����� ������">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<!-- old -->
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!-- /old -->

<link href="/css/style.css?v=51" rel="stylesheet" type="text/css"> 

</head>
<!-- ����� new-year ��� body - ��������� ���������� ������ -->
<body onclick="closeMap(event);" class="" >
<div id="img_cont">
<div id="image_loading" style="display:none">�������� ...</div>
<div id="image" style="display:none"><img src=""></div>
</div>
<div id="basket" class="basketMove" onmousedown="basket_moving=1;" onmousemove="basketMove();">
�������
</div>
<div id="ajax_log" style="position:absolute; left:100px; top:100px; width:200px; height:100px; z-index:10000; background-color:#FFFFFF; visibility:hidden; border: solid 1px #000000;">
AJAX LOG
</div>
<!--��������� ���� ����� ������ -->

<div class="duty alert" id="rightContacts">
<div class="alert_layout">
    <%--<span title="�������" is_alert="1" class="close">�������</span>--%>
    <img src="images/callMe.png" width="150px"/>
<p class="title"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="callMe.aspx" >��� �����������?</asp:HyperLink></p>

<div class="alert_text_layout">
 <p><img src="images/callMeMini.png" width="22px"/> 
 <span class="style2">8(495) 795-75-98</span><br/><br/>
 <img src="images/emailMini.gif" width="22px"/>&nbsp; <a href="mailto:info@vorsinstrument.ru?subject=����� � �������� ��������������">�������� ������</a><br/><br/>
 <br/>

<b>��� ����� �������!</b></p>
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
alt='������������ ���������� ��� ���������������' 
itemprop="contentUrl"></a></span>
<div>
    <%--<img src="images/default_head.PNG" />--%>
</div>

<img src="images/Bg_menu.png" width="680"/>

</header>
<!-- ������� ����-->
<nav id="nav" class="mainMenu">
 
  <div class="ny-menu-bg"></div>
  <table id="nav">
    <tbody>
      <tr>

        <td>
          <div class="item">
            <a href="Stock.aspx" class="first hover" id="d200">�����</a>
          </div>
        </td>
        <td>
          <div class="item">
            <a href="Default.aspx" class="first" id="d4752">������� �������</a>
          </div>
        </td>
        <td>
          <div class="item">
            <a href="Buy.aspx" class="first" id="d3369">����������</a>
          </div>
        </td>
        <td>
          <div class="item">
            <a href="Contacts.aspx" class="first" id="d6517">��������</a>
          </div>
        </td>

      </tr>
    </tbody>
  </table>
  <script type="text/javascript" src="/javascripts/menu.js?v=5"></script>
</nav>
<!-- ������� ���� �����-->
</noindex>
<div class="shadowBox">
<div class="shadowInside">
<div class="colWrap">
<div class="colWrapInside main">
<!-- left column -->
<div class="leftCol">
<noindex>
<section class="simpleBlock sendOrderBox">
<h2 class="simpleTitle">�������� �����</h2>
<p class="sendOrder">��������� ��� ����� � <strong>����� �������</strong>: Word, Excel, PDF ...</p>
<p class="textCenter marginNone">
<span class="buttonShadow inline"><a class="button active bgBot loadOrderDrop" href="ZakazOnline.aspx">�������� �����</a></span>
</p>
</section>
<section class="simpleBlock">
<h2 class="simpleTitle">����� � ������</h2>
<p class="officeDesc"><span class="red">����������� ����:</span></p>
<p>������, 1-�� ��������� �����, ������-����� ���������<br /> �. ���-��������</p>
<p class="officePhone"><span>(916)</span> 902-88-55</p>
<p><a class="mapsLink" onClick="showMapBox(event, 'mapBox1');"><span>����� �������</span></a></p>
</section>
<section class="simpleBlock sale">
<h2 class="simpleTitle">�����</h2>							<p>������ �� 29 ������� ��������  &quot;��������������&quot; ������������� ������ �� 30% �� ���� ������������ Nox</p>
<p style="font-size: 16px"><a href="/4689/"><strong>C���� ������ !</strong></a></p>
</section>
                       
</noindex>
</div>

<div class="rightCol">

<%----------������ ����� ������----------%>

<div class="ya-site-form ya-site-form_inited_no" onclick="return {'action':'search.aspx','arrow':false,'bg':'transparent','fontsize':12,'fg':'#000000','language':'ru','logo':'rb','publicname':'����� vorsinstrument','suggest':false,'target':'_blank','tld':'ru','type':3,'usebigdictionary':true,'searchid':2222204,'webopt':false,'websearch':false,'input_fg':'#000000','input_bg':'#ffffff','input_fontStyle':'normal','input_fontWeight':'normal','input_placeholder':'����� �����������','input_placeholderColor':'#000000','input_borderColor':'#ff0000'}">
         <form action="http://yandex.ru/sitesearch" method="get" target="_blank">
            <input type="hidden" name="searchid" value="2222204"/>
            <input type="hidden" name="l10n" value="ru"/>
            <input type="hidden" name="reqenc" value=""/>
            <input type="search" name="text" value=""/>
            <input type="submit" value="�����"/>
          </form>
</div>
  <style type="text/css">
      .ya-page_js_yes .ya-site-form_inited_no { display: none; }
  </style>
  <script type="text/javascript">
      (function (w, d, c) { var s = d.createElement('script'), h = d.getElementsByTagName('script')[0], e = d.documentElement; if ((' ' + e.className + ' ').indexOf(' ya-page_js_yes ') === -1) { e.className += ' ya-page_js_yes'; } s.type = 'text/javascript'; s.async = true; s.charset = 'utf-8'; s.src = (d.location.protocol === 'https:' ? 'https:' : 'http:') + '//site.yandex.net/v2.0/js/all.js'; h.parentNode.insertBefore(s, h); (w[c] || (w[c] = [])).push(function () { Ya.Site.Form.init() }) })(window, document, 'yandex_site_callbacks');
  </script>     

<%----------������ ����� �����----------%>

<%--<form action="/search" method="get" id="searchFrm" class="searchMain" name="search">
<a class="btn" href="javascript:document.getElementById('searchFrm').submit();" 
    title="������" id="leftSearch">������</a>
<input class="catSearch" id="catSearch_main" name="search" type="text" value="����� ����������� (����� 10 000 �������)" onblur="javascript:if(this.value==''){this.value='����� ����������� (����� 10 000 �������)'};" onfocus="if(this.value=='����� ����������� (����� 10 000 �������)') {this.value='';}" autocomplete="off">
<input class="hiddenBtn" name="" type="submit">
<!--<a href="/advanced_search">����������� �����</a>-->
<div class="autocomplete" id="autosuggestResults_main"></div>
</form>--%>

<!--������� ��������-->
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
	background		: #ffffff;	/*���������� ��� IE6*/
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
        <a href="Default.aspx">�������</a> ->
        <a href="Drills.aspx">�����</a> ->
        <a href="drills_16.aspx">����� �� ������ � ������ "Hagwert"</a>
        
        
        </div>
    
    
    
      <strong>
         <asp:Label ID="lblName" runat="server" 
             
             
             
             
             Text="������ �� ������ 6,0�� &quot;Hagwert&quot;"></asp:Label> </strong></span>
    <br />
    <br />
</div>
     <div id="photoDiv" style="width:50%;float:left;" >
         <%--<img src="images/products/556006-199.PNG" width="250px"/>--%>
         <asp:Image ID="photo" runat="server" width="300px" style="filter:FlipH;"   
             ImageUrl="images/products/576004-10.jpg"/>
       </div>


    <div id="parametr" style="width:50%;height:250px;float:left;">
        <strong>�������:</strong> 576006<br /><br />
        <strong>���.�����:</strong> 10<br /><br />
        <strong>�������������� �����������:</strong> ������<br /><br />
        <strong>�������:</strong> �� ������<br /><br />


        <table cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td style="width:100%;float:right">
                    <asp:Label ID="lblprice" runat="server" 
                        style="font-weight: 700; font-size: xx-large" Text="-"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text="���."></asp:Label>
                    <br />

                   
                   <a class="tooltip" href="#" style="font-size:11px;color:#CC6600;text-decoration:none;">�������� ������
                    <%--<asp:Label ID="lblsale" runat="server" Text="�������� ������?" 
                        ForeColor="#CC6600" style="font-size: 11px; cursor:pointer"></asp:Label>--%>
                        <span style="font-size:12px;">�� ��������� ������ 5% ��� ������ ������ �� ����� �� 5000 ������</span>
                        </a>
                </td>
                <td>
        
                      <a href="#evil" id="byu"  onclick="document.getElementById('popup').style.display = 'block'; document.getElementById('parent_popup').style.display = 'block'; document.getElementById('catSearch_main').style.display = 'none'; document.getElementById('rightContacts').style.display = 'none';  document.getElementById('leftSearch').style.display = 'none';  document.getElementById('nav').style.display = 'none'; return false;">
                        <asp:Button ID="btnBuy" runat="server" BackColor="#CF4518" Font-Bold="True" style="cursor:pointer;" 
                        Font-Italic="False" Text="������" ForeColor="#F9F9F9" Width="150px" 
                        Height="70px" BorderStyle="None" />
                      </a>

                </td>
            </tr>
        </table>
        <br />        
        
        
    </div>
    
    
    <div id="buy" style="width:100%;margin-top:320px;">
       
       �� ������ ���������� ���� ����� ����� �� ��������� ��������:

        <br />
        1. �������� ����� �� ����� ����� �� ������ <strong>&quot;������&quot;</strong><br />
        2. ��������� ��� �� ��������: <strong>8 (495) 795-75-98</strong><br />
        3. ��������� ����� �� ����� <strong><a href="mailto:info@vorsinstrument.ru">info@vorsinstrument.ru</a></strong><br />
        </div>
    
    <br/>
    
    
       <div id="delivery" style="width:100%;">
          <br/><br/>
          ������� ��������: 
          <br />
          <img alt="������� ��������" longdesc="������� ��������" 
          src="images/three_catalog/delivery_img.PNG" 
          style="width: 387px; height: 105px" /></div>


      
      <div id="content" style="width:100%;">
        <h3>������ �� ������ � ��������</h3>
        <p>� �������� ������� � ������������� ��������� ������������� ��������� ����� ����������, ��� ������, ��������, ������, ������.
        ��� ����� ��������� ����������� ����������� ���������� � ��������, �������� ��� ��������� �������� � ���������� ��������, �������,
        ������������ �������� - <strong>������ �� ������</strong>, <strong>������ �� ������ � ��������</strong>, <strong>�� ������ � ������</strong> ,
        <strong> �� ������ � ������</strong></p>
        <p>
        ������ �� ������ Hagwert ����������� �� ������� ��������, ����� ��� ������. ������ �� ������ � �������� �������� �������� ���������.
        ������ �� ������ � ������ ��� ������������ ���������� ��������������, ������� ��������� � ��������������� ���������.
        ������ �� ������ � �������� Hagwert ����� Delta ���������� ��� ��������� ������ � ��������. ������ �� ������ Hagwert ����� Quadro ����� �������� 
        � ������ ������� �����������, ��� ������������.
        </p>

        <p>
          ���������� ����� ������ ������, ��� ����������� ������ ������� �������? ��� ��������� ���������� � ������, ��������, ������, �������
          ���������� ������ Hagwert. Hagwert - ������ �� ������ ���� ������� ����. 
        </p>
        </div>

    <div id="also_buy" style="width:100%;margin-top:50px; height: 291px;">
        <strong>C ���� ������� ����� ��������:</strong>
        <br/>
        <div id="also_buy1" style="width:24%; height:200px;float:left; text-align: center;">
           <asp:ImageButton ID="ImageButton1" runat="server" 
               ImageUrl="images/products/576004-10.jpg" Width="160px" 
               
                
                
                PostBackUrl="Sverlo_po_steklu_Hagwert_5mm.aspx?price_name=price_drills_16&article=576005" />
           <br />
           <asp:HyperLink ID="hl1" runat="server" 
                
                NavigateUrl="Sverlo_po_steklu_Hagwert_5mm.aspx?price_name=price_drills_16&article=576005">������ �� ������ 5,0�� &quot;Hagwert&quot;
           </asp:HyperLink>
        </div>
       
       
       
       <div id="also_buy2" style="width:24%; height:200px;float:left; text-align: center;">
       <asp:ImageButton ID="ImageButton2" runat="server" 
               ImageUrl="images/second_catalog/drills_17.PNG" width="150px" 
               
               PostBackUrl="drills_17.aspx" 
                />
           <br />
           <asp:HyperLink ID="HyperLink2" runat="server" 
               
               NavigateUrl="~/drills_17.aspx">������ �� �������� &quot;RENNBOHR BY DIAGER&quot;</asp:HyperLink>
       </div>

       <div id="also_buy3" style="width:24%; height:200px;float:left; text-align: center;">
       <asp:ImageButton ID="ImageButton3" runat="server" 
               ImageUrl="images/products/576104-5-6-8-10-12.jpg" Width="140px" 
               
               PostBackUrl="Sverlo_po_steklu_i_keramike_Hagwert_Quadro_12mm.aspx?price_name=price_drills_16&article=576112" 
              />
           <br />
           <asp:HyperLink ID="HyperLink3" runat="server" 
               
               
               NavigateUrl="~/Sverlo_po_steklu_i_keramike_Hagwert_Quadro_12mm.aspx?price_name=price_drills_16&article=576112">������ �� �������� � ������ 12,0�� 4 ����� Quadro &quot;Hagwert&quot;</asp:HyperLink>
       </div>
       
       <div id="Div1" style="width:24%; height:200px;float:left; text-align: center;">
       <asp:ImageButton ID="ImageButton4" runat="server" 
               ImageUrl="images/second_catalog/drills_18.PNG" Width="60px" 
               
               PostBackUrl="drills_18.aspx" 
              />
           <br />
           <asp:HyperLink ID="HyperLink4" runat="server" 
               
               
               NavigateUrl="~/drills_18.aspx">����������� ����� &quot;Hagwert&quot;</asp:HyperLink>
       </div>


    </div>



           <!--����������� ���� ������----------------------->
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
                            <td class="auto-style13"><strong><asp:Label ID="lblNameWindow" runat="server" Text="���"></asp:Label></strong><br />
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
                            <td>&nbsp;���� ����������:<br />
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
                                *������� ��� � ��������
                                --%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                  
                  
                  <%-- <a href="#evil" id="A1"  onclick="document.getElementById('popup').style.display = 'block'; document.getElementById('parent_popup').style.display = 'block'; document.getElementById('catSearch_main').style.display = 'none'; document.getElementById('rightContacts').style.display = 'none';  document.getElementById('leftSearch').style.display = 'none';  document.getElementById('nav').style.display = 'none'; return false;">--%>
                                  
                  
                   <div id="btnDivSend" style="margin-left:30%">
                    <asp:Button ID="btnSend" runat="server" BackColor="#CF4518" Font-Bold="True" 
                        Font-Italic="False" Text="��������� �����" ForeColor="#F9F9F9" Width="150px" Height="50px"  OnClick="btnSend_Click" />
                        </div>
                          <%--</a> --%>   
                      
                   
                      

                

                    <br/>
                    <br/>
                </td>
            </tr>
        </table>
        
    </p>
  </div>
</div>
    <!--����������� ���� �����------------------------>

               <!--����������� ���� ��������� ������ ������----------------------->
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
                            <td class="auto-style13"><strong><asp:Label ID="Label2" runat="server" Text="���"></asp:Label></strong><br />
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
                            <td>&nbsp;���� ����������:<br />
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
                                *������� ��� � ��������
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
                        Font-Italic="False" Text="��������� �����" ForeColor="#F9F9F9" Width="150px" Height="50px"  OnClick="btnSend_Click" />--%>
                        </div>
                            
                      
                   
                      

                

                    <br/>
                    <br/>
                </td>
            </tr>
        </table>
  
    </p>
  </div>
</div>
    <!--����������� ���� �����------------------------>
   
    </form>
     </div>
<!--����� �������� ��������--> 
<!-- ��� �������� ����� -->
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
<div style="text-align:center;"><h2>������������ ���������� ����� 10 000 ������������</h2></div>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000"><font size="2">�������� ��� �������� ���������� � 10 ��� �� ���������� ����� ����������������� ������� �����������, �������� �������������� ���������� ������� ������:</font></font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>RennBohr</strong> - ���� � ������� �������� � �� 1000 ��������� � ������, ������� ������ �� ������, ������ �� ������� � �������� 124 �������� � ��������� ��� ������������, ������ �� ������ � ������������ ������ . ���� ��-�� ������� (����� DIAGER)</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>GERT</strong> � ������������ �����������-����, ������������� ����� ���������� �� �������� ��������� , ����� ������� ��������� ������. ��-�� ��������</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>MPS</strong> � ���������������� ����� � ��������� ������� ��� ������������������, ������� ��-������. ��-�� ��������</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>CROSSWEHR</strong> - ������ ������� �� ������ ���������, ��� ������, ��� ������� �������, ��� �������������� �������. ������������ ������.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000"><font size="2">������, ����������� ��� ������������ ����.������� � ������� �� ����������� ������������:<br/><br/>

    <strong>HAGWERT</strong>  � ���� � ������ �� ������, ���� � ������, ������ �� �������, ��-5% ������, ������-�����, ���������� ������, ������ �� ������ � ������������ ������ 2-� � 4-� ������, ������ �� ������ �������, ����������, �������� �����.</font></font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>NOX</strong> � ������� ����������� ���, ��������. ����������� � ��� ���� �� 50 �� � �����������.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>RUNEX</strong> - ����� ��� ������������������, ������� ����� �� ������, ��������, ��������, ������� �� ������.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>STELGRIT</strong> � ������������, ������� ������������, ��������� �������� � �����.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>STRIKE</strong>� �������, �������, ������.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>NORK</strong> � �������-�������� � �������� �����, ������ �� ���.</font></p>
<p class="cnt" align="left"><font color="#000000" size="2"><strong>FOMERON</strong> � ��������� ��� ��������� ���� � ���������.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">� ����� ������� ����������� ������ ������ ������������� ����������: ������� �� ����.����� 
    <strong>FLAT</strong>, ��������� �������, ��������� � �������� <strong>TARG</strong>, ������� 
    <strong>Metric</strong>, ������������ ������ <strong>METRIC TILER</strong>, ���������� ����� � ����� 
    <strong>ZIFLEX</strong>.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">������������ ����� ��������� ������ ���������� ������������ �������� ��������������� ���������� ��������������� ����������. ����������� ����������� ����/��������, ������-������� �������� ������, �����-����������� ���� ����������� ��� ����������� ����� ��������� �� ���� ���������� ������.</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">� ��� ������ ������� ������ � �������������� ������ � ������� �������</font></p>
<p class="cnt" align="left" style="text-indent:1em;"><font color="#000000" size="2">�������������� �������� ������ �� ������� �� ������ �� ������, �� � �� ���������� �������. � ����� �� ���������� ������������ ��������.</font></p>
</div>
<div class="greyAbout">
<div class="aboutInside">
<div class="left">
<p class="copy">&copy; ��� "������� ����������" 2012 ���</p>
<p>������, 1-�� ��������� �����, ������-����� ���������<br /> �. ���-��������</p>
</div>
<div class="right">
<p class="phone">(495) 795-75-98<br>
<p class="mail"><a href="mailto:info@vorsinstrument.ru">info@vorsinstrument.ru</a></p>
</div>
<nav class="bottomMenu">
<table cellspacing="0">
<!-- ������� ����-->
<tr>

<td><a href="Stock.aspx">�����</a></td>
<td><a href="�atalog.aspx">������� �������</a></td>
<td><a href="Buy.aspx">����������</a></td>
<td><a href="Contacts.aspx">��������</a></td>


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
<a class="button bgBot active" href="#">�������� �����</a>
<a class="button active topLoadBtn" href="#"><span class="inside"><span class="ico load"></span>��������� �����</span></a>
<h2 class="dropTitle">����� � ������������ �����</h2>
<div id='fastorder_top_msg'></div>
<div id='fastorder_form'>
<p>��������� ���� � <strong>����� �������</strong>, ���������� ����������� ��� �������� �������:<span style="color: #D83801;">*</span></p>
<form action="/fastorder" method="post" id="fastorder_frm" name="fastorder_frm" enctype='multipart/form-data' target="send_form">
<input type="hidden" name="page" value="" />
<div class="elemBox file">
<a class="button smallest" title="�������� ����"><span class="inside"><input type="file" name="addfile[]">�����...</span></a>
<div class="inputBox">
<input class="text" type="text" value="" name="file[]" readonly="readonly">
</div>
</div>
<div class="elemBox file hide">
<a class="button smallest" title="�������� ����"><span class="inside"><input type="file" name="addfile[]">�����...</span></a>
<div class="inputBox">
<input class="text" type="text" value="" name="file[]" readonly="readonly">
</div>
</div>
<div class="elemBox file hide">
<a class="button smallest" title="�������� ����"><span class="inside"><input type="file" name="addfile[]">�����...</span></a>
<div class="inputBox">
<input class="text" type="text" value="" name="file[]" readonly="readonly">
</div>
</div>
<p><a class="addMoreFile" href="#">�������� ��� ����</a></p>
<hr>
<div id='fastorder_msg'><p class="red">�������� ���� ���������� ������:</p></div>
<label>�������<span>*</span></label>
<input name="phone" type="tel">
<label>�.�.�.<span>*</span></label>
<input name="fio" type="text">
<label>E-mail</label>
<input name="email" type="email">
<textarea placeholder="��� �����������..." name="description"></textarea>
<p class="formGlobalDesc"><span class="red">*</span> ����, ������������ ��� ����������</p>
<p class="textCenter">
<span class="buttonShadow small inline"><a class="button small blue" href="javascript:void(0);" onclick="document.getElementById('fastorder_frm').submit(); return false;"><span class="inside">��������� ������</span></a></span>
</p>
</form>
</div>
<span class="close" title="�������">�������</span>
</div>
</div>
</div>
<!-- /load order -->
<iframe id="send_form" name="send_form" src='about:blank' width=0 height=0 border=0 style='visibility:hidden'></iframe>

<div id="drop_map_show"></div>
<noindex>
<div id="message" style="display: none; position: absolute; top: 19%; left: 30%; z-index: 90000">
<div style="font-weight: bold; border: 2px solid #E1E1E1; padding: 10px 20px; width: 200px; background-color: #FBFBFB">
<div align="right"><a href="#" onclick="$('message').style.display = 'none'; return false;">�������</a></div>
</div>
</div>
<div id="geomap" style="display:none; position:absolute; z-index:1000; background:#fff;">
<div style="float:right; padding-right:25px; padding-bottom: 6px"><a href="#" onclick="showMap();return false">�������</a></div>
<span>�������������� � ��������</span>
<div id="flashcontent"><div style="width: 400px"><strong><p>��� ��������� ����� ���������� ���������� Flash Player!<br><br>������� <a href="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" target="tmp">������</a>, ����� ���������� ���������.<br>����� ��������� ��������� ������������� ��������.</p></strong></div></div>
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
