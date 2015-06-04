<%@ Control Language="C#" AutoEventWireup="true" CodeFile="support_faq-menu.ascx.cs" Inherits="controls_faq_menu" %>

<p>FAQ's:</p>
<ul>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq.aspx">General</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq_product-selection.aspx">Product Selection</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq_installation.aspx">Installation</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq_programming.aspx">Programming</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq_troubleshooting.aspx">Troubleshooting</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq_technical.aspx">Technical Support</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq_operation-and-maintenance.aspx">Operation &#38; Maintenance</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/faq_warranty.aspx">Warranty</a></li>
</ul>