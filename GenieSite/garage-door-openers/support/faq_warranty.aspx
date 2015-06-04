<%@ Page Title="FAQ: Genie Warranty Information | Genie Product Support" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq_warranty.aspx.cs" Inherits="support_faq" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/support_faq-menu.ascx" tagname="faq" tagprefix="support" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Frequently asked questions about warranties for Genie garage door openers and accessories." />
    <meta id="keywords" name="keywords" runat="server" content="genie warranty, genie company, the genie company" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Support / FAQ: Warranty Information</h1>
<span class="header_note">For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</span>

<!-- FAQ menu -->
<support:faq runat="server" ID="faq" />
        
<ol class="faq">
    <li>
        <p>What is the product warranty for my Genie garage-door product?</p>
        <p>All Genie garage-door products come with limited warranties that protect the original purchaser against defects in materials and workmanship. Refer to your <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">owner's manual</a> for details.</p>
    </li>

    <li>
        <p>Can I register my new Genie Garage door opener product online?</p>
        <p>Use our <a href="#">Warranty Registration form</a> to register your Genie product.</p>
    </li>

    <li>
        <p>How do I get service under my Genie warranty?</p>
        <p>Please contact <a href="http://www.geniecompany.com/contact.aspx">Genie Company Customer Service</a> about the problem you are having. A trained Genie representative will help to diagnose the problem and/or will ship you the necessary parts to complete the repair.</p>
        <p>For warranty parts and/or repairs, please have your model number and a copy of your original sales receipt available before calling.</p>
        <p>Note: A shipping and handling fee will be assessed on all parts orders.</p>
    </li>

    <li>
        <p>How do I purchase, repair or replace parts for my Genie garage-door product?</p>
        <p>You can contact The Genie Company in a variety of ways:</p>
        <ul>
            <li>Contact your local <a href="http://www.geniecompany.com/locate-genie.aspx">Genie Professional Dealer</a>. (To search by phone for Genie products in your area: <b>1-800-65-GENIE</b>.)</li>
            <li>Call Genie Customer service: <b>1-800-35-GENIE</b> (Note: We accept Visa and MasterCard. The card's expiration date must be at least one month in the future.)</li>
            <li>Send us an E-mail: <a href="mailto:genie_info@geniecompany.com?Subject=Online%20Support-Warranty">genie_info@geniecompany.com</a></li>
            <li>
                <p>Send your requests by mail to:</p>
                <p>Warranty Repairs Department</p>
                <p>The Genie Company</p>
                <p>P.O. Box 67</p>
                <p>Attn: Genie Customer Service</p>
                <p>Mt Hope, OH 44660</p>    
            </li>
        </ul>
    </li>

</ol>

</asp:Content>

