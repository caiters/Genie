<%@ Page Title="The ChainMax 1000 Garage Door Opener by Genie" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chainmax-1000.aspx.cs" Inherits="retail_chainmax_1000" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/standard-features-menu.ascx" tagname="features" tagprefix="standard" %>
<%@ Register src="../../controls/retail_accessories-promo.ascx" tagname="accessories" tagprefix="retail" %>
<%@ Register src="../../controls/retail_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>
<%@ Register src="../../controls/share-btns.ascx" tagname="share" tagprefix="shareBtns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">

    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="The ChainMax 1000 provides intelligent design for the homeowner that wants quiet performance with superior design and maximum convenience." />
    <meta id="keywords" name="keywords" runat="server" content="chainmax 1000, genie garage door opener, genie company" />

    <meta property="og:title" content="The ChainMax 1000 Garage Door Opener by Genie" />
    <meta property="og:site_name" content="The Genie Company" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.geniecompany.com/garage-door-openers/retail_chainmax-1000.aspx" />
    <meta property="og:image" content="http://www.geniecompany.com/images/products/retail/product-image_retail_chainmax-1000_v01b.png" />
    <meta property="og:description" content="The ChainMax 1000 provides intelligent design for the homeowner that wants quiet performance with superior design and maximum convenience." />
    <meta property="fb:app_id" content="197599327339" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- ExternalId: TGC_product_R-CM1000 -->

<!-- share btn scripts -->
<shareBtns:share runat="server" ID="share" />

<h1 class="chaintmax_1000">ChainMax<span class="reg">&#174;</span> 1000</h1>

<!-- standard features -->
<standard:features runat="server" ID="standard_features" />
<!-- retail accessories promo -->
<retail:accessories runat="server" ID="accessories" />
<!-- recommended accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

