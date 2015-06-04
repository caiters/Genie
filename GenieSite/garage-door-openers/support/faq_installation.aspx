<%@ Page Title="FAQ: Installation | Genie Product Support" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq_installation.aspx.cs" Inherits="support_faq" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/support_faq-menu.ascx" tagname="faq" tagprefix="support" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Frequently asked questions regarding installation of Genie garage fdoor openers." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Support / FAQ: Garage Door Opener Installation</h1>

<!-- FAQ menu -->
<support:faq runat="server" ID="faq" />

<h2>FAQ: Pre-Installation Information for Genie Garage Door Products</h2>
<span class="header_note">For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</span>

<ol class="faq">
    <li>
        <p>How much space is required to install a Genie garage door opener?</p>
        <p>Please see your <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">owner's manual</a> for requirements.</p>
    </li>

    <li>
        <p>What do I need to check before installing a Genie opener myself?</p>
        <p>Before attempting installation yourself, thoroughly read your owner's manual. Be sure to inspect the mounting area: Is it adequate (e.g., structurally sound, clear of wires and other obstructions, clean, etc.) to safely install the opener you have selected? Also confirm the availability of a 110- volt, grounded outlet within the reach of the openerÃ¢â‚¬â„¢s power cord. Be sure to wear protective gear, such as safety glasses, and follow all precautions regarding electrical and ladder safety.</p>
        <p>(Please see your <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">owner's manual</a>.)</p>
        <p>The pre-installation checklist includes:</p>
        <ul>
            <li>Check door condition and thickness.</li>
            <li>Check door alignment and balance.</li>
            <li>Confirm door height.</li>
            <li>Measure door header.</li>
            <li>Select power-head mounting area.</li>
            <li>Confirm the grounded power source.</li>
            <li>Select bracket locations.</li>
            <li>Gather tools required for installation.</li>
            <li>Remove door locks.</li>
        </ul>
        <p>If, at any point, you are unsure of the steps to take, or if you have any questions, contact <a href="http://www.geniecompany.com/contact.aspx">Genie Customer Service</a> or your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</p>
    </li>
</ol>

<h2>FAQ: Installing Genie Garage Door Products</h2>

<ol>
    <li>
        <p>How do I program my Genie opener to HomeLink?</p>
        <p>Downloadable PDF Instructions: <a href="http://geniecompany.com/data/products/accessories/homelink-system_programming.pdf">HomeLink System Programming for Genie</a></p>
    </li>

    <li>
        <p>Can I access installation manuals online?</p>
        <p>View a complete list of owner's manuals available as downloadable PDF files: <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">Online Product Support</a></p>
    </li>

    <li>
        <p>Can I cut the rails?</p>
        <p>Yes, only if necessary to work around the structural obstructions in the garage; however, when you cut the rail, you also reduce the distance that the door is raised. For every inch cut, an inch of door travel is lost. Your <a href="http://www.geniecompany.com/locate-genie.aspx">Genie Professional Dealer</a> can help you determine the best approach to installing around obstructions.</p>
        <p>If you must cut the rails, the Genie's Direct Screw Drive Screw has the easiest rail to cut. Simply measure and cut off the appropriate length of rail, then drill an appropriately sized attachment hole in the rail. Belt- and chain-drive systems are more difficult to handle because changing the rail length requires re-tensioning the belts or removing chain links, followed by reassembling. We DO NOT support cutting belt or chain rails; only Screwdrive. Contact your <a href="http://www.geniecompany.com/locate-genie.aspx">Genie Professional Dealer</a> for detailed instructions.</p>
        <p>The rails can be adjusted to work around structural obstructions in the garage, however, it is recommended that you contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a> for assistance with installing around obstructions.</p>
    </li>

    <li>
        <p>What is the thin black or gray wire that hangs from the power head?</p>
        <p>It is the radio antenna, which is required for proper operation of Genie remotes. For the best range, make sure that the antenna hangs straight down from the power head.</p>
    </li>
</ol>

</asp:Content>

