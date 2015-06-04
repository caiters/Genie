<%@ Page Title="FAQ: Programming Genie Garage Door Opener Products | Genie Product Support" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq_programming.aspx.cs" Inherits="support_faq" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/support_faq-menu.ascx" tagname="faq" tagprefix="support" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Frequently asked questions about programming Genie garage door openers and accessories." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Support / FAQ: Programming Genie Garage Door Opener Products</h1>
<span class="header_note">For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</span>

<!-- FAQ menu -->
<support:faq runat="server" ID="faq" />

<ol class="faq">
    <li>
        <p>How do I program a Genie remote?</p>
        <p>To successfully program your remote, you must have it within frequency range of your Genie opener.</p>
        <p>Then, follow these simple steps for most models (consult your <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">owner's manual</a> for specific instructions for your model):</p>
        <ol class="alpha">
            <li>Locate the "Learn Code" button and LED indicator. Depending on the model of garage door opener you own, "Learn Code" is typically located near the antenna of the unit.</li>
            <li>Press and release "Learn Code"; the LED indicator will blink at a rate of twice per second. Press and release the button on the remote you want to program; the LED indicator will flash or glow steadily (varies by model). Press the same remote button again; the LED indicator will go out.</li>
            <li>To check that the button has been programmed correctly, press the button on the remote again; the door should operate. If it does not, carefully repeat the steps above. And remember to clear all people, pets, ladders, vehicles and other obstructions from the garage door's path before activating (see our <a href="<%= NavUtils.GetApplicationPath(Request) %>/support_safety.aspx">Safety Center</a> for more information.)</li>
            <li>Repeat the steps above for multiple doors and/or remotes with multiple buttons.</li>
            <li>Up to seven remote-operated devices can be programmed into one of the Genie legacy Intellicode garage door openers. That includes a total of seven Intellicode remotes or six Intellicode remotes plus an Intellicode wireless keypad. HomeLink programming would claim one of the available memories if desired. Newer DC units can hold 28 remote devices and newer AC units can hold up to 30.</li>
        </ol>
        <p><b>More information:</b></p>
        <ul class="faq_answer">
            <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">Operation &amp; Maintenance Manuals</a></li>
            <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/programming_accessories.aspx#remotes">Instruction Manuals: Remotes</a></li>
            <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/video_remote-control-programming.aspx">VIDEO: Remote Control Programming</a></li>
            <li><a href="http://www.geniecompany.com/data/products/accessories/homelink-system_programming.pdf" target="_new">HomeLink Instructions</a></li>
        </ul>
        <p>For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</p>
    </li>

    <li>
        <p>How do I program my Genie wireless keypad?</p>
        <p>It depends on the model. View the list of Genie wireless keypads for links to programming instructions.</p>
        <ul><li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/programming-accessories.aspx">Programming Accessories</a></li></ul>
        <p>For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</p>
    </li>
</ol>

</asp:Content>

