<%@ Page Title="Genie Video Library" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="video_library.aspx.cs" Inherits="genie_video" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../controls/video-menu.ascx" tagname="video" tagprefix="gtv" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Genie Video Library." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Video Library</h1>

<!-- video menu -->
<gtv:video runat="server" ID="gtv" />


</asp:Content>

