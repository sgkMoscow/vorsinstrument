<%@ Page Title="" Language="C#" MasterPageFile="~/Section.Master" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="vorsinstrument.Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="font-weight: 700; font-size: large">
 АКЦИИ И СКИДКИ
</div>
<article>
<p class="date">17.01.2015</p>
<div>
   <p>При оптовой покупке на сумму от 100 000 руб  вы получаете скидку 25% и серебряную карту Друга &quot;ВорсИнструмент&quot;</p>
   <p><img src="images/stock/2.PNG" width="200px"/></p>
   <p>Серебряная карта "Друг Ворсинструмент" предоставляет скидку 7% на любую покупку товара до конца текущего календарного года.</p>
</div>
<%--<p><a class="mapsLink" href="/archive/news?id=495&amp;offset=0&amp;limit=50">Подробнее</a></p>--%>
</article>


<article>
<p class="date">19.04.2014</p>
<div>Акция! Только до 1 июня при покупке бит INTENZA  дисплей в подарок!</div>
<%--<p><a class="mapsLink" href="/archive/news?id=495&amp;offset=0&amp;limit=50">Подробнее</a></p>--%>
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
