﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Section.Master" AutoEventWireup="true" CodeBehind="spades_2.aspx.cs" Inherits="vorsinstrument.spades_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--Навигация начало--%>
<div id="links" style="width:100%; height:30px; font-size: small;">
        <a href="Default.aspx">Главная</a> ->
        <a href="Spades.aspx">Пики и зубила</a> ->
        Пики, зубила Rennbohr, Hagwert
    </div>
<%--Навигация конец--%>

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" Height="256px" Width="100%">
     <Columns>
        <asp:BoundField DataField="article" HeaderText="Артикул" SortExpression="article" />
        <asp:ImageField DataImageUrlField="image" HeaderText="Фото" NullDisplayText="Изображение отсутствует"><ControlStyle Width="70px" /></asp:ImageField>
        <%--<asp:BoundField DataField="name" HeaderText="Наименование" SortExpression="name" />--%>
          <asp:HyperLinkField  NavigateUrl="" HeaderText="Наименование"  DataNavigateUrlFields="link" DataTextField="name" />
        <asp:BoundField DataField="min" HeaderText="Мин. заказ"  SortExpression="min" />
        <asp:BoundField DataField="price" HeaderText="Цена (руб)" SortExpression="price" />
    <%--    <asp:ButtonField CommandName="Select" Text="Купить" />--%>


    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:sgk111263_13ConnectionString %>" 
    SelectCommand="SELECT [id], [article], [name], [min], ROUND([price]*(SELECT course FROM Course_USD WHERE id = 1),2) AS [price], image, link  FROM [price_spades_2]">
</asp:SqlDataSource>
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
