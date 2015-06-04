<%@ Page Title="Pro-Line Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pro-line_product.aspx.cs" Inherits="pro_product" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/pro-line_recommended-accessories.ascx" tagname="accessories" tagprefix="recommended" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Pro-line product." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Pro-line / PRODUCT</h1>

<!-- Recommended Accessories -->
<recommended:accessories runat="server" ID="recommend" />

</asp:Content>

