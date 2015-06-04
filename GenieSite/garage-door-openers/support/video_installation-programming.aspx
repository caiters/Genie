<%@ Page Title="Video: Installation & Programming | Genie Product Support" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="video_installation-programming.aspx.cs" Inherits="support_videos" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/support_video-menu.ascx" tagname="video" tagprefix="support" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Installation and programming videos from Genie." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Support / Video: Installation &amp; Programming</h1>

<!-- Support video menu -->
<support:video runat="server" ID="recommend" />

</asp:Content>

