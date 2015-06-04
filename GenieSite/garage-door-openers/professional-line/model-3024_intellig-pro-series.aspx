<%@ Page Title="Model 3024 Garage Door Opener by Genie" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="model-3024_intellig-pro-series.aspx.cs" Inherits="model_3024" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/standard-features-menu.ascx" tagname="features" tagprefix="standard" %>
<%@ Register src="../../controls/pro-line_accessories-promo.ascx" tagname="accessories" tagprefix="pro" %>
<%@ Register src="../../controls/pro-line_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>
<%@ Register src="../../controls/share-btns.ascx" tagname="share" tagprefix="shareBtns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">

    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="The Model 3024 provides intelligent design for the homeowner that wants quiet performance with superior design and conveniences that fit their busy lifestyle." />
    <meta id="keywords" name="keywords" runat="server" content="model 3024, top garage door openers, genie company" />
    
    <meta property="og:title" content="The Model 3024 Garage Door Opener by Genie" />
    <meta property="og:site_name" content="The Genie Company" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.geniecompany.com/garage-door-openers/model-3024_intellig-pro-series.aspx" />
    <meta property="og:image" content="http://www.geniecompany.com/images/products/pro-line/model-3024_v01.png" />
    <meta property="og:description" content="The Model 3024 provides intelligent design for the homeowner that wants quiet performance with superior design and conveniences that fit their busy lifestyle." />
    <meta property="fb:app_id" content="197599327339" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- ExternalId: TGC_product-PING1000 -->

<!-- share btn scripts -->
<shareBtns:share runat="server" ID="share" />

<h1 class="model_3024">Model 3024</h1>

<!-- standard features -->
<standard:features runat="server" ID="standard_features" />
<!-- pro-line accessories promo -->
<pro:accessories runat="server" ID="accessories" />
<!-- recommended accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

