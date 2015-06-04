<%@ Page Title="Standard features for Genie garage door openers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="video_todays-homeowner.aspx.cs" Inherits="genie_video" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../controls/video-menu.ascx" tagname="video" tagprefix="gtv" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="National home improvement guru Danny Lipford features Genie on garage television show episodes." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Genie Featured on Today's Homeowner with Danny Lipford</h1>

<!-- video menu -->
<gtv:video runat="server" ID="gtv" />

</asp:Content>

