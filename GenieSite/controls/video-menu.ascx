<%@ Control Language="C#" AutoEventWireup="true" CodeFile="video-menu.ascx.cs" Inherits="controls_video_menu" %>

<p>Videos:</p>
<ul>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/video_how-its-made.aspx">How Its Made</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/video_library.aspx">Genie Video Library</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/video_open-sesame.aspx">Open Sesame Contest</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/video_todays-homeowner.aspx">Today's Homeowner</a></li>
    <li><a href="<%= NavUtils.GetApplicationPath(Request) %>/garage-door-openers/support/video_installation-programming.aspx">Installation &amp; Programming</a></li>
</ul>

