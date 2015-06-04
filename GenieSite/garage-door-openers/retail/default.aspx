<%@ Page Title="Genie Retail Garage Door Openers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MasterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="Server">
    <meta name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Genie retail garage door openers." />
    <meta id="keywords" name="keywords" runat="server" content="garage door openers" />
</asp:Content>

<asp:Content ID="Body1" ContentPlaceHolderID="Body" runat="Server">

<h1>DIY/Retail</h1>

<ul>
    <li>
        <h2>140V DC Motors</h2>
        <ul>
            <li>
                <h3>Direct Drive Screw</h3>
                <ul>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/powermax-1500.aspx">PowerMax<span class="reg">&#174;</span> 1500</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/powermax-1200.aspx">PowerMax<span class="reg">&#174;</span> 1200</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/excelerator-II.aspx">Excelerator<span class="reg">&#174;</span> II</a></li>
                </ul>
            </li>
            <li>
                <h3>Belt Drive</h3>
                <ul>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/silentmax-1200.aspx">SilentMax<span class="reg">&#174;</span> 1200</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/silentmax-1000.aspx">SilentMax<span class="reg">&#174;</span> 1000</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/quietlift-800.aspx">QuietLift<span class="reg">&#8482;</span> 800</a></li>
                    
                </ul>
            </li>
            <li>
                <h3>Chain Drive</h3>
                <ul>
                    <!-- no longer available <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/chainMax-1200.aspx">ChainMax<span class="reg">&#174;</span> 1200</a></li> -->
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/chainmax-1000.aspx">ChainMax<span class="reg">&#174;</span> 1000</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/chainlift-800.aspx">ChainLift<span class="reg">&#8482;</span> 800</a></li>
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/chainlift-600.aspx">ChainLift<span class="reg">&#8482;</span> 600</a></li>
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
                    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/powerlift-900.aspx">PowerLift<span class="reg">&#174;</span> 900</a></li>
                </ul>
            </li>
        </ul>
    </li>
</ul>

<ul>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail/accessories">Retail Accessories</a></li>
</ul>

</asp:Content>