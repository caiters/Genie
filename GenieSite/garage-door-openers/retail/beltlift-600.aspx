<%@ Page Title="BeltLift 600 Garage Door Opener | Genie Retail" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="beltlift-600.aspx.cs" Inherits="retail_beltlift_600" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/standard-features-menu.ascx" tagname="features" tagprefix="standard" %>
<%@ Register src="../../controls/retail_accessories-promo.ascx" tagname="accessories" tagprefix="retail" %>
<%@ Register src="../../controls/retail_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>
<%@ Register src="../../controls/share-btns.ascx" tagname="share" tagprefix="shareBtns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">

    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="The BeltLift provides quiet, smooth reliability to those looking for a great value in an easy to install belt drive garage door opener." />
    <meta id="keywords" name="keywords" runat="server" content="garage door opener, beltlift 600, genie company" />

    <meta property="og:title" content="The BeltLift 600 Garage Door Opener by Genie" />
    <meta property="og:site_name" content="The Genie Company" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.geniecompany.com/garage-door-openers/retail_beltlift.aspx" />
    <meta property="og:image" content="http://www.geniecompany.com/images/products/retail/product-image_retail_beltlift_v01b.png" />
    <meta property="og:description" content="The BeltLift provides quiet, smooth reliability to those looking for a great value in an easy to install belt drive garage door opener." />
    <meta property="fb:app_id" content="197599327339" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- ExternalId: TGC_product_R-BL600 -->

<!-- share btn scripts -->
<shareBtns:share runat="server" ID="share" />

<h1 class="logo beltlift">BeltLift<span class="reg">&#8482;</span></h1>

<!-- standard features -->
<standard:features runat="server" ID="standard_features" />
<!-- retail accessories promo -->
<retail:accessories runat="server" ID="accessories" />
<!-- recommended accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

