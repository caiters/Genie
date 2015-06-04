<%@ Page Title="Genie Professional Line Garage Door Openers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MasterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="Server">
    <meta name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Genie Professional Line garage door openers." />
    <meta id="keywords" name="keywords" runat="server" content="garage door openers, genie, garage door installation" />
</asp:Content>

<asp:Content ID="Body1" ContentPlaceHolderID="Body" runat="Server">

<h1>Professional Line</h1>

<ul>
    <li>
        <h2>140V DC Motors</h2>
        <ul>
            <li>
                <h3>Direct Drive Screw</h3>
                <ul>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/model-4064_trilog-pro-series.aspx">Model 4064</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/model-3064_trilog-pro-series.aspx">Model 3064</a></li>
                </ul>
            </li>
            <li>
                <h3>Belt/Chain Drive</h3>
                <ul>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/model-4024_trilog-pro-series.aspx">Model 4024</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/model-3024_trilog-pro-series.aspx">Model 3024</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <h2>Other DC Motors</h2>
        <ul>
            <li>
                <h3>Chain Drive</h3>
                <ul>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/model-1028_reliag-pro-series.aspx">Model 1028</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/model-2028_reliag-pro-series.aspx">Model 2028</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <h2>AC Motors</h2>
        <ul>
            <li>
                <h3>Direct Drive Screw</h3>
                <ul>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/model-2568_reliag-pro-series.aspx">Model 2568</a></li>
                </ul>
            </li>
        </ul>
    </li>
</ul>

<ul>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/professional-line/accessories">Pro-Line Accessories</a></li>
</ul>

</asp:Content>