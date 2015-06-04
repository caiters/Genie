<%@ Page Title="The PowerMax 1200 Garage Door Opener by Genie" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="powermax-1200.aspx.cs" Inherits="retail_powermax_1200" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/standard-features-menu.ascx" tagname="features" tagprefix="standard" %>
<%@ Register src="../../controls/retail_accessories-promo.ascx" tagname="accessories" tagprefix="retail" %>
<%@ Register src="../../controls/retail_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>
<%@ Register src="../../controls/share-btns.ascx" tagname="share" tagprefix="shareBtns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    
    <link rel="canonical" href="http://www.geniecompany.com/garage-door-openers/retail_powermax-1200.aspx" />
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="The PowerMax 1200 provides intelligent design for the homeowner that wants powerful and fast performance with superior design and the ultimate in conveniences to fit their busy lifestyle." />
    <meta id="keywords" name="keywords" runat="server" content="Product support, support, powermax 1200, programming, service, help, genie company" />

    <meta property="og:title" content="The PowerMax 1200 Garage Door Opener by Genie" />
    <meta property="og:site_name" content="The Genie Company" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.geniecompany.com/garage-door-openers/retail_powermax-1200.aspx" />
    <meta property="og:image" content="http://www.geniecompany.com/images/products/retail/product-image_retail_powermax-1200_v01b.png" />
    <meta property="og:description" content="The PowerMax 1200 provides intelligent design for the homeowner that wants powerful and fast performance with superior design and the ultimate in conveniences to fit their busy lifestyle." />
    <meta property="fb:app_id" content="197599327339" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<!-- ExternalId: TGC_product_R-PM1200 -->

<!-- share btn scripts -->
<shareBtns:share runat="server" ID="share" />

<h1 class="powermax_1200">PowerMax<span class="reg">&#174;</span> 1200</h1>

<!-- standard features -->
<standard:features runat="server" ID="standard_features" />
<!-- retail accessories promo -->
<retail:accessories runat="server" ID="accessories" />
<!-- recommended accessories -->
<recommended:accessories runat="server" ID="recommend" />


</asp:Content>

