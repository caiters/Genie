<%@ Page Title="FAQ: Troubleshooting | Genie Product Support" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq_troubleshooting.aspx.cs" Inherits="support_faq" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/support_faq-menu.ascx" tagname="faq" tagprefix="support" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Frequently asked questions about troubleshooting problems with your Genie garage door opener and accessories." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Support / FAQ: Troubleshooting Genie Garage Door Openers and Accessories</h1>
<span class="header_note">For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</span>

<!-- FAQ menu -->
<support:faq runat="server" ID="faq" />

<ol class="faq">
    <li>
        <p>Why is the Safe-T-Beam<span class="reg">&#174;</span> light blinking?</p>
        <p>Safe-T-Beam is a government-required safety feature that must be installed in order for your Genie garage door opener to work. A flashing Safe-T-Beam LED indicator means a malfunction has occurred. First, be sure that the lenses are clean, and check for any possible obstructions or loose wires. Also, make sure that lenses are mounted five to six inches from the floor on either side of the garage-door opening and that lenses are aligned facing one another. If the LED indicator continues to flash, see your owner's manual for a list of possible causes and additional troubleshooting.</p>
    </li>
    <li>
        <p>Why does my Genie garage door opener reverse/open when I try closing it?</p>
        <p>The likely culprit is an obstruction in the path of the garage door. Check for and clear any obstructions in its way. If the problem persists, check to see if the red Safe-T-Beam LED indicator is blinking. If it is, be sure that the lenses are mounted five to six inches from the floor on either side of the garage-door opening. If the Safe-T-BeamÂ® lenses appear to be installed properly and aligned facing one another, refer to the troubleshooting section of your ownerâ€™s manual for additional causes and solutions.</p>
    </li>
    <li>
        <p>Why does the Genie opener run without moving the door?</p>
        <p>Your garage door may be disconnected from the opener. Check that the emergency-release cord has not been pulled. If this is the reason, you will need to reengage the carriage. The method to reengage the carriage depends on the model of garage door opener you own. See your owner's manual for more details.</p>
    </li>
    <li>
        <p>Why wonâ€™t my Genie remote work?</p>
        <p>Be sure that the remote has been properly programmed and that fresh batteries have been installed. If you are still having trouble, refer to your <a href="<%= NavUtils.GetApplicationPath(Request) %>/support.aspx">owner's manual</a>, or contact <a href="http://www.geniecompany.com/contact.aspx">Customer Service</a>.</p>
    </li>
    <li>
        <p>I recently installed some LED light bulbs on my opener and noticed I lost a little range on my remote transmitter about the same time. Are the two items related?</p>
        <p>With the obsolescence of the basic incandescent light bulb, it has come to Genie's attention that there are certain brands or types of LED bulbs that can cause interference with the radio signals. These LED bulbs can have an effect on the operation of nearby devices, such as affecting the transmitter range for remote operation of a garage door opener.</p>
        <p>Genie has conducted both function and fit tests with many of today's most readily available LED replacement bulbs. The LED bulbs listed <a href="http://geniecompany.com/data/news/press-release_led-replacement-bulb-notice_09-24-2014.pdf" target="_new">here</a> showed minimal radio frequency impact when compared to other bulbs tested.  Other LED bulb models will likely work but the effects on your garage door opener transmitter range could vary.</p>
        <p>Learn more:</p>
        <ul><li><a href="http://geniecompany.com/data/news/press-release_led-replacement-bulb-notice_09-24-2014.pdf" target="_new">LED Replacement Bulb Fit and Function for Genie Openers</a></li></ul>
    </li>
</ol>

</asp:Content>

