<%@ Page Title="" Language="C#" MasterPageFile="~/Section.Master" AutoEventWireup="true" CodeBehind="callMe.aspx.cs" Inherits="vorsinstrument.callMe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-weight: 700; font-size: large">
 ОБРАТНЫЙ ЗВОНОК
</div>
<article>
<p class="date">Ваш номер телефона:</p>
<div><asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox></p>
<%--<p><a class="mapsLink" href="/archive/news?id=495&amp;offset=0&amp;limit=50">Подробнее</a></p>--%>
<asp:Button ID="Button1" runat="server" Text="Заказать обратный звонок"></asp:Button>
</article>
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
