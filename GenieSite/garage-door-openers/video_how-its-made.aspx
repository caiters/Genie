<%@ Page Title="How It's Made | Genie Garage Door Openers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="video_how-its-made.aspx.cs" Inherits="genie_video" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../controls/video-menu.ascx" tagname="video" tagprefix="gtv" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Genie is featured on the Science Channel's television series How It's Made" />
    <meta id="keywords" name="keywords" runat="server" content="video, diy, garage door openers, genie company" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Video: How Its Made</h1>

<!-- video menu -->
<gtv:video runat="server" ID="gtv" />

</asp:Content>

