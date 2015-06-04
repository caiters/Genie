﻿<%@ Page Title="The ChainLift 800 Garage Door Opener by Genie" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chainlift-800.aspx.cs" Inherits="retail_chainlift_800" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/standard-features-menu.ascx" tagname="features" tagprefix="standard" %>
<%@ Register src="../../controls/retail_accessories-promo.ascx" tagname="accessories" tagprefix="retail" %>
<%@ Register src="../../controls/retail_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>
<%@ Register src="../../controls/share-btns.ascx" tagname="share" tagprefix="shareBtns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">

    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="The ChainLift 800 provides powerful, reliable performance with quiet operation for those who desire a long-lasting and easy to install chain drive opener." />
    <meta id="keywords" name="keywords" runat="server" content="garage door opener, chainlift 800, genie" />

    <meta property="og:title" content="The ChainLift 800 Garage Door Opener by Genie" />
    <meta property="og:site_name" content="The Genie Company" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.geniecompany.com/garage-door-openers/retail_chainlift-800.aspx" />
    <meta property="og:image" content="http://www.geniecompany.com/images/products/retail/product-image_retail_chainlift-800_v01b.png" />
    <meta property="og:description" content="The ChainLift 800 provides powerful, reliable performance with quiet operation for those who desire a long-lasting and easy to install chain drive opener." />
    <meta property="fb:app_id" content="197599327339" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- ExternalId: TGC_product_R-CL800 -->

<!-- share btn scripts -->
<shareBtns:share runat="server" ID="share" />

<h1 class="chainlift">ChainLift<span class="reg">&#8482;</span> 800</h1>

<!-- standard features -->
<standard:features runat="server" ID="standard_features" />
<!-- retail accessories promo -->
<retail:accessories runat="server" ID="accessories" />
<!-- recommended accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

