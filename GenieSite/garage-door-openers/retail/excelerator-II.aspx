<%@ Page Title="The Excelerator II Garage Door Opener by Genie" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="excelerator-II.aspx.cs" Inherits="retail_excelerator_2" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/standard-features-menu.ascx" tagname="features" tagprefix="standard" %>
<%@ Register src="../../controls/retail_accessories-promo.ascx" tagname="accessories" tagprefix="retail" %>
<%@ Register src="../../controls/retail_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>
<%@ Register src="../../controls/share-btns.ascx" tagname="share" tagprefix="shareBtns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Excelerator II garage door opener by Genie. Exclusively at The Home Depot" />
    <meta id="keywords" name="keywords" runat="server" content="garage door opener, excelerator II, programming, service, help, genie company" />

    <meta property="og:title" content="The Excelerator II Garage Door Opener by Genie" />
    <meta property="og:site_name" content="The Genie Company" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.geniecompany.com/garage-door-openers/retail_excelerator-II.aspx" />
    <meta property="og:image" content="http://www.geniecompany.com/images/products/retail/product-image_retail_excelerator-II_v01.png" />
    <meta property="og:description" content="As the original screw drive manufacturer, Genie has been dedicated to providing the most complete garage door opening systems for 60 years. You can find the Excelerator II garage door opener by Genie exclusively at The Home Depot." />
    <meta property="fb:app_id" content="FB_APP_ID" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- ExternalId: TGC_product_R-EX2 -->

<!-- share btn scripts -->
<shareBtns:share runat="server" ID="share" />

<h1 class="excellerator_II">Excelerator<span class="reg">&#174;</span> II</h1>

<!-- standard features -->
<standard:features runat="server" ID="standard_features" />
<!-- retail accessories promo -->
<retail:accessories runat="server" ID="accessories" />
<!-- recommended accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

