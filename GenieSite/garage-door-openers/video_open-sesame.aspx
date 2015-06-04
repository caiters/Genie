<%@ Page Title="Open Sesame Video Contest | Genie Garage Door Openers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="video_open-sesame.aspx.cs" Inherits="genie_video" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../controls/video-menu.ascx" tagname="video" tagprefix="gtv" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="1-2-3 Open Sesame: View our Genie Company video contest entries, including the winner and top finalists." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Open Sesame Video Contest</h1>

<!-- video menu -->
<gtv:video runat="server" ID="gtv" />

</asp:Content>

