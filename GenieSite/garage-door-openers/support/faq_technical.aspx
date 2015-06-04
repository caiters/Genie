<%@ Page Title="FAQ: Technical Support | Genie Product Support" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq_technical.aspx.cs" Inherits="support_faq" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/support_faq-menu.ascx" tagname="faq" tagprefix="support" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Frequently asked questions regarding technical support for Genie garage door openers and accessories." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Support / FAQ: Technical Support for Genie Garage Door Openers and Accessories</h1>
<span class="header_note">For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</span>

<!-- FAQ menu -->
<support:faq runat="server" ID="faq" />

<ol class="faq">
    <li>
        <p>Is technical support available for my Genie garage-door product?</p>
        <p>Genie has been manufacturing garage-door products for more than half a century, which means we can offer you expert advice about selecting, installing, maintaining and troubleshooting your new opener.</p>
        <p>You can get expert advice through:</p>
        <ul>
            <li>Contact your local <a href="http://www.geniecompany.com/locate-genie.aspx">Genie Professional Dealer</a></li>
            <li>Use our <a href="http://geniecompany.com/contact.aspx">online Contact Us form</a> to request information</li>
            <li>Send us an E-mail: <a href="mailto:genie_info@geniecompany.com?Subject=Online%20Support-Warranty">genie_info@geniecompany.com</a></li>
            <li>
                <p>Call Genie Customer service:</p>
                <p><b>1-800-35-GENIE</b> (1-800-354-3643)</p>
                <p>Monday - Friday: 9:00 a.m. - 8:00 p.m. EST</p>
                <p>Saturday: 10:00 a.m. - 6:00 p.m. EST</p>
            </li>
        </ul>
    </li>
</ol>

</asp:Content>

