﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Section.Master" AutoEventWireup="true" CodeBehind="Hacksaw.aspx.cs" Inherits="vorsinstrument.Hacksaw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<ul class="textCatalog category">
  <li>
    <p>
       <a href="hacksaw_1.aspx">
        Полотна для ножовок по металлу
             <span class="qty">(4)</span>
      </a>
    </p>
    <span class="catPic">
      <a href="hacksaw_1.aspx" itemscope="" itemtype="http://schema.org/ImageObject">
        <img src="images/second_catalog/hacksaw_1.PNG" alt="" 
          itemprop="contentUrl">
      </a>
    </span>
    <div class="notice"></div>
  </li>
  <li>
  </li>
</ul>
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
