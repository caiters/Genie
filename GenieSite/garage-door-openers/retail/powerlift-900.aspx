<%@ Page Title="The PowerLift 900 Garage Door Opener by Genie" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="powerlift-900.aspx.cs" Inherits="retail_powerlift_900" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/standard-features-menu.ascx" tagname="features" tagprefix="standard" %>
<%@ Register src="../../controls/retail_accessories-promo.ascx" tagname="accessories" tagprefix="retail" %>
<%@ Register src="../../controls/retail_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>
<%@ Register src="../../controls/share-btns.ascx" tagname="share" tagprefix="shareBtns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">

    <meta name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="The PowerLift 900 provides strength and reliability with an easy-to-own, maintenance free direct drive screw system." />
    <meta id="keywords" name="keywords" runat="server" content="power lift 900 garage door opener, genie garage door, genie company" />

    <meta property="og:title" content="The PowerLift 900 Garage Door Opener by Genie" />
    <meta property="og:site_name" content="The Genie Company" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.geniecompany.com/garage-door-openers/retail_powerlift-900.aspx" />
    <meta property="og:image" content="http://www.geniecompany.com/images/products/retail/product-image_retail_powerlift-900_v01b.png" />
    <meta property="og:description" content="The PowerLift 900 provides strength and reliability with an easy-to-own, maintenance free direct drive screw system." />
    <meta property="fb:app_id" content="197599327339" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- ExternalId: TGC_product_R-PL900 -->

<!-- share btn scripts -->
<shareBtns:share runat="server" ID="share" />

<h1 class="powerlift_900">PowerLift<span class="reg">&#174;</span> 900</h1>
 
<!-- standard features -->
<standard:features runat="server" ID="standard_features" />
<!-- retail accessories promo -->
<retail:accessories runat="server" ID="accessories" />
<!-- recommended accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

