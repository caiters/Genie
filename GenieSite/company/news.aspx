<%@ Page Title="News &#38; Press Releases | Genie Garage Door Openers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>
<%@ MasterType TypeName="MasterPage" %>
<%@ Register src="../controls/company-menu.ascx" tagname="menu" tagprefix="company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" Runat="Server">
	<meta id="Meta1" name="robots" runat="server" content="index, follow" />
    <meta id="description" name="description" runat="server" content="Genie Company News and Press Releases" />
    <meta id="keywords" name="keywords" runat="server" content="garage door openers, genie company, news, press release" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">

<h1>Genie News/Press Releases</h1>

<!-- company menu -->
<company:menu runat="server" ID="company" />

<ul class="news">
            
    <!-- today's homeowner -->
    <!-- X KB -->
    <li>
        <!-- 66 KB -->
        <a href="<%= NavUtils.GetApplicationPath(Request) %>/genie-video_todays-homeowner.aspx"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/todays-homeowner_100x65.png" alt="Today's Homeowner" title="Today's Homeowner" /></a>
        <h3><a class="" href="<%= NavUtils.GetApplicationPath(Request) %>/genie-video_todays-homeowner.aspx">Genie Featured on Today's Homeowner with Danny Lipford</a></h3>
        <div class="clear">&nbsp;</div>
        <p class="news_summary">The national home improvement show Today's Homeowner with Danny Lipford recently featured Genie openers as part of its Satellite Media Tour.</p>
    </li>

    <!-- how its made -->
    <!-- X KB -->
    <li>
        <!-- 66 KB -->
        <a href="<%= NavUtils.GetApplicationPath(Request) %>/genie-video_how-its-made.aspx"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/howitsmade_100x65.png" alt="How It's Made" title="How It's Made" /></a>
        <h3><a class="" href="<%= NavUtils.GetApplicationPath(Request) %>/genie-video_how-its-made.aspx">Genie Makes Debute on How It's Made</a></h3>
        <div class="clear">&nbsp;</div>
        <p class="news_summary">The Genie Company was featured on the popular show How It's Made, appearing on Science Channel USA.</p>
    </li>

    <!-- 850-650 -->
    <!-- 43 KB -->
    <li>
        <!-- 66 KB -->
        <a href="http://geniecompany.com/data/news/press-release_reliag-850-650.pdf" target="_new"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/850-650_100x65.png" alt="ReliaG 850/650" title="ReliaG 850/650" /></a>
        <h3><a class="news_lead" href="http://geniecompany.com/data/news/press-release_reliag-850-650.pdf" target="_new">Genie Launches the NEW ReliaG<span class="reg">&#174;</span> 850 &#38; 650 Openers</a></h3>
        <div class="clear">&nbsp;</div>
        <p class="news_summary">High quality models geared to value-driven consumers and builders.</p>
    </li>

    <!-- Relay for Life 2013 -->
    <!-- 88 KB -->
    <li>
        <!-- 66 KB -->
        <a href="http://geniecompany.com/data/news/relay-for-life_aug-2013.pdf" target="_new"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/relay-for-life-2013_100x65.png" alt="Relay for Life" title="Relay for Life" /></a>
        <!-- <h3><a class="news_lead" href="http://geniecompany.com/data/news/relay-for-life_aug-2013.pdf" target="_new">Genie and Wayne Dalton<span class="reg">&#174;</span> sponsor employee run and walk for cancer</a></h3> -->
        <h3><a class="news_lead" href="http://geniecompany.com/data/news/relay-for-life_aug-2013.pdf" target="_new">Genie Helps Sponsor Employee Run and Walk for Cancer</a></h3>
        <div class="clear">&nbsp;</div>
        <p class="news_summary">The Genie Company in conjunction with Wayne Dalton recently sponsored an employee 5k run and one mile walk to raise funds for the American Cancer Society.</p>
        <!-- relay for life logo <a href="http://geniecompany.com/data/news/relay-for-life_aug-2013.pdf" target="_new"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/logo_relay-for-life_100x99.png" alt="Relay for Life" title="Relay for Life" /></a> -->
    </li>

    <!-- IDA 2013 -->
    <!-- 66 KB -->
    <li>
        <a href="http://geniecompany.com/data/news/IDA_may-2013.pdf" target="_new"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/IDA-2013_100x65.png" alt="IDA 2013" title="IDA 2013" /></a>
        <h3><a class="news_lead" href="http://geniecompany.com/data/news/IDA_may-2013.pdf" target="_new">Genie Makes Strong Impact at 2013 IDA Expo</a></h3>
        <div class="clear">&nbsp;</div>
    </li>
            
    <!-- battery with 'NEW' starburst -->
    <!-- 52 KB -->
    <li>
        <a href="http://geniecompany.com/data/news/press-release_battery-backup_03-2013.pdf" target="_new"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/winter-storm_100x65.png" alt="Genie Battery Back-Up" title="Genie Battery Back-Up" /></a>
        <h3><a class="news_lead" href="http://geniecompany.com/data/news/press-release_battery-backup_03-2013.pdf" target="_new">Introducing the NEW Battery Back-up Option!</a></h3>
        <div class="clear">&nbsp;</div>
        <!-- <p class="news_summary">When the power goes out, Genie power goes on...</p> -->
        <ul class="basic">
            <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/battery-backup-unit.aspx">Battery Back-Up</a> (Product page)</li>
        </ul>
    </li>

    <!-- IDA 2012 -->
    <!-- 1.88 MB -->
    <li>
        <a href="http://geniecompany.com/data/news/IDA_dec-2012.pdf" target="_new"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/kridel_100x65.png" alt="IDA 2012" title="IDA 2012" /></a>
        <h3><a class="news_lead" href="http://geniecompany.com/data/news/IDA_dec-2012.pdf" target="_new">Genie featured in International Door &#38; Operator Magazine</a></h3>
        <div class="clear">&nbsp;</div>
        <!-- 
        <ul class="basic">
            <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/genie-video.aspx?v=ajTK2Fp5Tw0#i">VIDEO: IDA Expo 2012 &#45; Las Vegas</a></li>
        </ul>
        -->
    </li>

    <!-- video contest winners -->
    <!-- 164 KB -->
    <li>
        <a href="http://geniecompany.com/data/news/press-release_video-contest-winners_08-2012.pdf" target="_new"><img src="<%= NavUtils.GetApplicationPath(Request) %>/images/news/video-contest-winner_100x65.png" alt="Open Sesame video contest winner!" title="Open Sesame video contest winner!" /></a>
        <h3><a class="news_lead" href="http://geniecompany.com/data/news/press-release_video-contest-winners_08-2012.pdf" target="_new">GENIE Announces 'Open Sesame' Video Contest Winner!</a></h3>
        <div class="clear">&nbsp;</div>
        <ul class="basic">
            <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/genie-video_open-sesame.aspx">VIDEO: Contest winner and finalists</a></li>  
        </ul>
    </li>

    <!-- commercial products voted #1 -->
    <!-- 619 KB -->
    <li>
        <h3><a target="_new" class="news_lead" href="http://geniecompany.com/data/news/press-release_genie-expands-into-commercial-market.pdf">Genie Commercial Openers 'Voted #1 Hottest New Product at Expo 2012'</a></h3>
        <div class="clear">&nbsp;</div>
        <p class="news_summary">Genie Company announces a product line expansion with the launch of our new Commercial Line of door operators.</p>
    </li>
</ul>

<!-- archive -->
Press Release Archive
<ul>
    <li class="download"><a class="pdf" href="http://geniecompany.com/data/news/press-release_gpower-900.pdf">The New GPower<span class="reg">&#8482;</span> 900 Opener <span class="download_size">Download: 161 KB</span></a></li>
    <li class="download"><a class="pdf" href="http://geniecompany.com/data/news/genie-introduces-closed-confirm-remote_press-release.pdf">Genie Introduces Closed Confirm<span class="reg">&#8482;</span> Remote <span class="download_size">Download: 73 KB</span></a></li>
    <li class="download"><a class="pdf" href="http://geniecompany.com/data/news/genie-launches-trilog-1500-1200_press-release.pdf">Genie Launches TriloG<span class="reg">&#8482;</span> 1500 &#38; 1200 <span class="download_size">Download: 108 KB</span></a></li>
    <li class="download"><a class="pdf" href="http://geniecompany.com/data/news/genie-introduces-intellig-1200-1000_press-release.pdf">Genie Introduces IntelliG<span class="reg">&#174;</span> 1200 &#38; 1000 <span class="download_size">Download: 100 KB</span></a></li>
    <li class="download"><a class="pdf" href="http://geniecompany.com/data/news/genie-names-new-president_press-release.pdf">Genie Names New President <span class="download_size">Download: 88 KB</span></a></li>
    <!--
    <li><a class="pdf" href="http://geniecompany.com/data/news/press-release_overhead-wd-join-forces.pdf">Overhead Door and Wayne-Dalton: Two industry giants join forces</a></li>
    <li><a class="pdf" href="http://geniecompany.com/data/news/press-release_overhead-wd-sign-asset-purchase-agreement.pdf">Overhead Door and Wayne-Dalton sign Asset Purchase Agreement</a></li>
    <li><a class="pdf" href="http://geniecompany.com/data/news/press-release_overhead-wd-agreement-in-principle.pdf">Overhead Door reaches agreement in principle to acquire Wayne-Dalton</a></li>
    <li><a class="pdf" href="http://geniecompany.com/data/news/press-release_reliag.pdf">introducing ReliaG 800 Garage Door Opener</a></li>
    -->
</ul><!-- /archive -->

</asp:Content>

