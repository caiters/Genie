<%@ Page Title="FAQ: General | Genie Product Support" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="support_faq" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../../controls/support_faq-menu.ascx" tagname="faq" tagprefix="support" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Frequently asked questions about Genie garage door openers." />
    <meta id="keywords" name="keywords" runat="server" content="" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Support / FAQ: General</h1>
<span class="header_note">For expert advice, contact your <a href="http://www.geniecompany.com/locate-genie.aspx">local Genie Professional Dealer</a>.</span>

<!-- FAQ menu -->
<support:faq runat="server" ID="faq" />
        
<ol class="faq">

    <li>
        <p>What is Intellicode<span class="reg">&#174;</span> and how does it work?</p>
        <p>Intellicode Access Security System features rolling-code technology that enhances the security of your Genie garage door opener. It offers significant advantages over conventional garage door openers that use fixed codes. An old-style opener remote transmits the same, fixed security code each time the remote button is pressed. Because the number of available fixed codes is limited, a conventional garage-door system can be breached by an unsuspecting neighbor, who inadvertently uses a remote with the same fixed code, or by hackers with less-than-innocent intentions.</p>
        <p>Genie Intellicode is different. Every time your garage-door system is activated, our proprietary Intellicode system selects a new code from billions of possible combinations. This virtually eliminates the possibility of hacking, and it helps prevent unauthorized entry into your home through the garage.</p>
    </li>

    <li>
        <p>How do I program a Genie remote?</p>
        <p>You'll need to be within reach of your Genie garage door opener with your remote. Before activating the door, be sure that all people, pets, ladders, vehicles and other obstructions are clear from the garage door's path.</p>
        <p>Then, see your <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">owner's manual</a> for instructions pertaining to your specific model.</p>
    </li>

    <li>
        <p>How does Safe-T-Beam<span class="reg">&#174;</span> work?</p>
        <p>Safe-T-Beam technology uses a continual infrared beam that projects across the interior of the garage-door opening to a receiver at all times. In order for your garage door to operate, the beam must be located at least five inches, but no more than six inches, from the floor, and it should be aligned so that the sensors "see" each other. During closing, if the beam is interrupted by a person, animal or object, Safe-T-Beam automatically raises the garage door to protect whatever is in its path. Please note that the garage door opener will not close the door unless Safe-T-Beam<span class="reg">&#174;</span> is installed and working properly.</p>
    </li>

    <li>
        <p>Can I turn off or remove Safe-T-Beam<span class="reg">&#174;</span>?</p>
        <p>No. All garage door openers manufactured since 1993 require some form of safety device to protect people, pets and objects from injury or damage if they are in the door's path. The beam must be located at least 5 inches, but not more than 6 inches, from the floor. The opener will not work if Safe-T-Beam<span class="reg">&#174;</span> is tampered with, removed or otherwise disengaged.</p>
    </li>

    <li>
        <p>How do I open my Genie garage door opener during a power outage?</p>
        <p>It depends on the model. You can open your Genie garage door opener from the inside by using the emergency-release cord, which hangs from the mounted overhead opener. Pulling down on the emergency cord will release the door from the opener's carriage, allowing you to operate the door manually. Use the handle when manually operating your garage door, and be cautious to avoid pinching your fingers between moving door sections. Opening the door from the outside requires installation of a Genie Emergency Release Lock (GER-R).</p>
        <p>To learn more, contact The Genie Company <a href="http://www.geniecompany.com/contact.aspx">Customer Service</a> or your <a href="http://www.geniecompany.com/locate-genie.aspx">Genie Professional Dealer</a>. You can also refer to your owner's manual for further instructions.</p>
    </li>

    <li>
        <p>How do I disengage/reengage the garage door from/to the opener's carriage?</p>
        <p>It depends on the model. You can disengage the garage door by pulling down on the emergency-release cord. Refer to your <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">owner's manual</a> for complete instructions about disengaging and reengaging the door.</p>
    </li>

    <li>
        <p>How do I open the lens cover to replace a bulb?</p>
        <p>It depends on the model, but specific instructions are provided in your owner's manual. On some models, like the <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/pro-line.aspx">TriloG<span class="reg">&#8482;</span></a>, <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/pro-line.aspx">IntelliG<span class="reg">&#8482;</span></a>, <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/retail.aspx">Excelerator<span class="reg">&#174;</span></a>, and <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/pro-line_reliag-800.aspx">ReliaG<span class="reg">&#8482;</span> 800</a> models, simply depress the two tabs that connect the lens cover to the top of the unit (chassis); the lens cover will swing open. Replace the bulb(s) with a service light bulb (follow guidelines in your owner's manual for maximum wattage), and close the lens cover. On other Genie models, you will need a Phillips screwdriver. Remove the two screws (at the top) that attach the lens cover to the front panel. The lens cover will drop down like a hinge, while you change the bulb. Use a heavy-duty, rough service  light bulb (follow guidelines in your <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/product-manuals.aspx">owner's manual</a> for maximum wattage). Realign the lens cover, and reattach the screws.</p>
    </li>

    <li>
        <p>What is the recommended maintenance for my Genie garage door opener?</p>
        <p>It varies by model. View the list of Genie opener models and online maintenance instructions. It is vital that the appropriate maintenance be performed to keep your garage-door system operating properly. (See: <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/safety.aspx">Safety Center</a>)</p>
    </li>

    <li>
        <p>Are some LED light bulbs better for my opener than others?</p>
        <p>With the obsolescence of the basic incandescent light bulb, it has come to Genie's attention that there are certain brands or types of LED bulbs that can cause interference with the radio signals. These LED bulbs can have an effect on the operation of nearby devices, such as affecting the transmitter range for remote operation of a garage door opener.</p>
        <p>Genie has conducted both function and fit tests with many of today's most readily available LED replacement bulbs. The LED bulbs listed <a href="http://geniecompany.com/data/news/press-release_led-replacement-bulb-notice_09-24-2014.pdf" target="_new">here</a> showed minimal radio frequency impact when compared to other bulbs tested.  Other LED bulb models will likely work but the effects on your garage door opener transmitter range could vary.</p>
        <p>Learn more:</p>
        <ul><li><a href="http://geniecompany.com/data/news/press-release_led-replacement-bulb-notice_09-24-2014.pdf" target="_new">LED Replacement Bulb Fit and Function for Genie Openers</a></li></ul>
    </li>

    <li>
        <p>Can I still participate in Genieâ€™s early 2014 voluntary recall of certain screw drive openers?</p>
        <p>Yes. In order to determine whether or not you have one of the small number of PowerMax and TriloG units which were affected by the 2014 voluntary recall, please click the link below for details.</p>
        <p>Learn more:</p>
        <ul><li><a href="<%= NavUtils.GetApplicationPath(Request) %>/recall">Recall information</a></li></ul>
    </li>
</ol>

<!-- /garage-door-openers/support/product-manuals.aspx -->
</asp:Content>

