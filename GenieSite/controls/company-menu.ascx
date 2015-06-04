<%@ Control Language="C#" AutoEventWireup="true" CodeFile="company-menu.ascx.cs" Inherits="controls_company_menu" %>

<p>Company:</p>
<ul>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/company">About Us</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/company/contact.aspx">Contact Us</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/company/news.aspx">News/Press Releases</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/company/buzz.aspx">Genie Buzz</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/company/supply-chain-ethics.aspx">Supply Chain Ethics</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/company/terms.aspx">Terms</a></li>
</ul>

