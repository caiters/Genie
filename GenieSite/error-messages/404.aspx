<%@ Page Title="404 Error: Page Not Found | Genie Garage Door Openers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="missing_page_error" %>
<%@ MasterType TypeName="MasterPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <link rel="canonical" href="http://www.geniecompany.com/error-messages/404.aspx" />
    <meta id="Meta1" name="robots" runat="server" content="nofollow" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- intro container -->
<div id="intro_container">
	<div class="decor">&nbsp;</div>
	<!-- lifestyle image -->
	<div id="intro_image"><p class="support">Oops...</p></div>
	<div class="decor">&nbsp;</div>
</div><!-- /intro container -->

<!-- main -->
<div id="main">
    <!-- page-header -->
    <div id="page_header_container"><h1>Missing Page Error</h1></div><!-- /page-header -->
    <!-- content -->
    <div id="content">
        <h2>We're sorry, the page you are looking for cannot be found...</h2>
        <p class="last">The page you are looking for is either unavailable or has been moved.</p>
        <h3>Suggestions to get you back on track:</h3>
        <p>When in doubt, go to our <a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/default.aspx">home page</a>. This page highlights all of our latest products and features.</p>
        <p class="last">If you are looking for something specific, you may be able to find it by looking at our <a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/site-map.aspx">site map</a>.</p>
        <h3>Other helpful links:</h3>
        <ul class="basic" style="margin: 0 0 20px 16px;">
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/contact.aspx">Contact US</a></li>
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/support.aspx">Online Product Support</a></li>
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/locate-genie.aspx">Dealer/Retailer Locator</a></li>
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/support_install-faq.aspx">Intallation tips &#38; FAQ</a></li>
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/support_programming-faq.aspx">Programming FAQ</a></li>
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/support_warranty.aspx">Warranty registration</a></li>
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/support.aspx">Owner's manuals</a></li>
            <li><a style="font-weight: bold;" href="<%= NavUtils.GetApplicationPath(Request) %>/support_safety.aspx">Opener Safety</a></li>
        </ul>
    </div><!-- /content -->
</div><!-- /main -->
</asp:Content>

