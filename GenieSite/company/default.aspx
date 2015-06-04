<%@ Page Title="About the Genie Company" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../controls/company-menu.ascx" tagname="menu" tagprefix="company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Learn the illustrious history of Genie that underscores its commitment to innovation, especially in the garage door opener industry." />
    <meta id="keywords" name="keywords" runat="server" content="genie, genie company, genie garage door openers" />
</asp:Content>

<asp:Content ID="Body1" ContentPlaceHolderID="Body" runat="Server">

<h1>About Us</h1>

<!-- company menu -->
<company:menu runat="server" ID="company" />

<p>Genie is one of America's best known and trusted consumer brand names. The company has an illustrious history that underscores its commitment to innovation. Millions of our product units are in use today throughout North America. Dependability, high quality and nationwide service are just a few reasons to choose a Genie branded garage door opener.</p>
<h2 id="history">The Genie History</h2>
<p>Founded in 1923 as the Alliance Manufacturing Company, production included a broad line of consumer, industrial and military products. When America was at war in the 1940's, the Alliance factory produced everything from fuse caps and voltage regulators to canteen handles and generators.</p>
<p>In 1954, the Alliance Manufacturing Company first produced its own garage door opener unit. Named Genie, it was the first mass-produced, radio-controlled residential garage door opener, and became the market leader in design, safety and reliable service - core values that Genie still upholds to this day.</p>
<p>In 1958, Genie engineers brought about the innovation of the first direct drive screw opener. Further design refinements resulted in the offering of a split rail, which opened opportunities to mass retailers for the first time in the mid-1970s. Consumer appeal for Genie products grew alongside the rapidly developing do-it-yourself market. In 1983, the company entered the home and shop vacuum market, and in 1985, changed its name to Genie Home Products.</p>
<p>By the time Overhead Door Corporation purchased the company in 1994, the Genie name had become a symbol of trust and reliability for millions of customers around the world who sought out the brand from professional dealers, home centers, hardware stores, and wholesale clubs. Its continuing focus on product quality, innovation and service remains the hallmark of the Genie legacy.</p>
<p>Today, Genie manufactures remote-controlled garage door opening systems and accessories for multiple distribution channels. The openers include advanced features such as a 140 volt DC motor, Intellicode remote access security system that automatically changes the security code to one of billions of combinations each time the transmitter is activated, as well as the Safe-T-Beam infrared system that senses objects in the door's path to prevent entrapment.</p>
<p>Genie's customer support of homeowners, along with dealers and retailers, is the industry best, and is one of the main reasons why Genie is so well recognized in the homeowner market.</p>

</asp:Content>