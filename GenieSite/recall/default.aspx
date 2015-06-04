<%@ Page Title="Product Recall | The Genie Company" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MasterPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headcontent" runat="Server">
    <meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Garage door opener safety notice." />
    <meta id="keywords" name="keywords" runat="server" content="recall, garage door opnener" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">

<h1>Genie Company Product Recall</h1>
    
    <!-- content -->
    <div id="content">

        <h2>Product Recall: Genie screw drive garage door openers</h2>
        <p>The reliability and safety of our products is of utmost importance to Genie. We are committed to ensuring our products are among the best in the market for safety and reliability, and that includes setting high standards for quality control and thoroughly investigating any reported issues. We want our products to be enjoyed in your home for years to come. For more information about safe operation and maintenance of your Genie garage door and opener, please go to: <a href="<%= NavUtils.GetApplicationPath(Request) %>/support_safety.aspx"><b>Safety Center</b></a></p>
    
        <h3>Recall Summary</h3>
    
        <p><b>Name of Product:</b> Garage door openers</p>
        <p><b>Hazard:</b> The control board can overheat, posing a fire hazard.</p>
        <p><b>Remedy:</b> Repair</p>
        <p><b>Consumer Contact:</b></p>
        <p style="color: #ce1126; font-size: 40px; text-align: center;">(800) 488-9918</p>
        <p style="text-align: center;">8 a.m. to 5 p.m. EST Monday through Friday</p>
        <p style="text-align: center;">Or send an email to: &nbsp; <span style="font-size: 16px; font-weight: bold;"><a href="mailto:genie_support@geniecompany.com?Subject=Online%20Support">Genie_Support@GenieCompany.com</a></span>.</p>
    
        <h3>Recall Details</h3>
    
        <p><b>Units:</b> About 10,000 in the U.S. and 8,000 in Canada</p>
        <p><b>Description:</b> This recall involves Genie and Genie Pro screw drive garage door openers, models PowerMax 1200 and 1500, and TriloG 1200 and 1500. The garage openers are gray and have a rating of Â¾ HPc to 1 HPc, depending on the model. â€œGenieâ€ and the model name appear on both sides of the opener. The model and serial numbers are printed on a label located on the side opposite to the light. Serial numbers for the recalled units start with the following five numbers:</p>
    
        <div style="width: 290px; height: 380px; margin: 20px auto 20px auto;"><img width="290px" height="380px" src="<%= NavUtils.GetApplicationPath(Request) %>/images/special/recall_mobile.png" alt="Product Recall: Genie screw drive garage door openers" title="Product Recall: Genie screw drive garage door openers" /></div>

        <div id="serial_numbers">
            <div class="column">
                <span class="header">Genie Retail Serial Number</span>
                <span class="number">11214</span>
                <span class="number">11215</span>
                <span class="number">11235</span>
                <span class="number">11256</span>
                <span class="number">11298</span>
                <span class="number">11311</span>
                <span class="number">11312</span>
                <span class="number">11313</span>
                <span class="number">11326</span>
                <span class="number">11327</span>
                <span class="number">11332</span>
                <span class="number">11336</span>
            </div>
    
            <div class="column">
                <span class="header">Genie Retail Serial Number</span>
                <span class="number">11347</span>
                <span class="number">11348</span>
                <span class="number">12006</span>
                <span class="number">12009</span>
                <span class="number">12018</span>
                <span class="number">12019</span>
                <span class="number">12026</span>
                <span class="number">12027</span>
                <span class="number">12034</span>
                <span class="number">12036</span>
                <span class="number">12037</span>
                <span class="number">12038</span>
                <span class="number">12058</span>
            </div>

            <div class="column">
                <span class="header">Genie Pro Serial Number</span>
                <span class="number">11214</span>
                <span class="number">11313</span>
                <span class="number">11332</span>
                <span class="number">11336</span>
                <span class="number">11347</span>
                <span class="number">11348</span>
                <span class="number">11349</span>
            </div>
            <div class="clear">&nbsp;</div>
        </div>

        <p><b>Incidents/Injuries:</b> Genie has received four reports of the control board overheating. No injuries have been reported.</p>
        <p><b>Remedy:</b> Consumers should immediately stop using the recalled garage door opener and contact Genie to receive a free repair kit, which includes a new control board and installation instructions.</p>
        <p><b>Sold at:</b> Canadian Tire, Carter Lumber, Lowes, Menards, The Home Depot, and other retailers and distributors nationwide and online at homedepot.com from August 2011 through October 2012 for about $250.</p>
        <p><b>Manufacturer:</b> GMI Holdings, Inc., dba The Genie Company, of Mt. Hope, Ohio</p>
        <p><b>Manufactured in:</b> United States</p>


        <h3>FAQ's</h3>

        <p><b>What is the problem with my garage door opener?</b></p>
	    <p>The recall affects a small number of screw-drive garage door openers that were produced approximately two years ago.  The affected openers have a relay in the light control circuit of the control board that can fail, cause the relay to overheat, and potentially catch fire.</p>
        <p>There have been four reports of the control circuit overheating and no reports of any fire that caused injury or property damage. To avoid this hazard, you should replace your garage door opener control board by participating in the recall.</p>
        <p><b>My garage door opener appears to be operating okay. Can I continue to use it?</b></p>
        <p>You should participate in the recall and replace it with the free replacement control panel.</p>
        <p><b>Is there a way I can fix/repair the product myself?</b></p>
        <p>No. Do not attempt to repair the product. You should participate in the recall and replace the control board as instructed.  Do not use the recalled product until you are able to do so.</p>
        <p><b>You said something about additional instructions. What are the instructions?</b></p>
        <p>We will send you instructions on how to replace the garage door opener control board.</p>
        <p><b>How long will it take for me to receive the replacement?</b></p>
        <p>About 4 business days. We apologize for any inconvenience, and assure you we are working as quickly as possible to replace your product.</p>

    </div>

</div>
</asp:Content>
