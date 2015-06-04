<%@ Page Title="Retail Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="retail_product.aspx.cs" Inherits="retail_product" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/retail_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Retail product page." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Retail / PRODUCT</h1>

<!-- Recommended Accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

