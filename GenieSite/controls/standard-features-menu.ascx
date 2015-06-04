<%@ Control Language="C#" AutoEventWireup="true" CodeFile="standard-features-menu.ascx.cs" Inherits="controls_StandardFeaturesList" %>

<h4>Standard Features</h4>
<ul>
	<li>
        <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/standard-features.aspx">Safe-T-Beam<span class="reg">&reg;</span> <span class="description">Self Diagnostic System</span></a>
        <p>Puts an invisible beam across the door opening. The door stops &amp; reverses to open position if anything passes through the beam.</p>
    </li>
	<li>
        <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/standard-features.aspx#intellicode">IntelliCode<span class="reg">&reg;</span> <span class="description">Rolling Code Technology</span></a>
        <p>Superior encryption technology (also known as rolling codes) that prevents piracy of the radio signal that opens your garage door by continually seeking a new code from billions of combinations.</p>
    </li>
	<li>
        <a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/standard-features.aspx#homelink">HomeLink<span class="reg">&reg;</span> <span style="font-weight: normal; font-size: 10px; color: #ce1126;">&amp;</span> Car2U<span class="reg">&#8482;</span> <span class="description">Home Automation Systems (Compatible)</span></a>
        <p>Home Automation System compatibility for convenience.</p>
    </li>
    <!-- 
    <li class="download"><a class="pdf" href="http://www.genie.com/data/products/accessories/homelink-system_programming.pdf" target="_new">PDF: HomeLink Instructions <span class="download_size">Download: 237 KB</span></a></li>
    <li class="download"><a class="pdf" href="http://www.genie.com/data/products/accessories/car2u-system-programming.pdf" target="_new">PDF: Car2U Instructions <span class="download_size">Download: 269 KB</span></a></li>
    -->
</ul><!-- /sub category -->