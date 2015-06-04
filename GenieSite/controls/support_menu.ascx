<%@ Control Language="C#" AutoEventWireup="true" CodeFile="support_menu.ascx.cs" Inherits="controls_faq_menu" %>

<p>Support</p>
<ul>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/programming-accessories.aspx">Programming (Accessories)</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/installation-programming_video.aspx">Installation &amp; Programming Videos</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq.aspx">FAQ</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/warranty-registration.aspx">Warranty Registration</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/safety.aspx">Opener Safety</a></li>
</ul>