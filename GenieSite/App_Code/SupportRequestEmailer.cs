using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Net.Mail;

/// <summary>
/// Summary description for ReqInfoEm
/// </summary>
public class SupportRequestEmailer
{
    private HttpContext m_context;


    public void Send(HttpContext context, string tbFname, string tbLname, string tbAddr1,
        string tbAddr2, string tbCity, string tbState, string tbRegion, string tbZip,
        string tbCountry, string tbEmail, string tbPhone, string tbModel, string tbComment)
    {
        m_context = context;
        string emSubject = "Genie Website User: Information Request";
        string emBody = "This request for information comes from: <B>"
                + tbFname + " " + tbLname + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Addr1: <B>" + tbAddr1 + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Addr2: <B>" + tbAddr2 + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;City: <B>" + tbCity + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;State: <B>" + tbState + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Zip: <B>" + tbZip + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Region: <B>" + tbRegion + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Country: <B>" + tbCountry + "</B>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Email: <B>" + tbEmail + "</B><BR>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Phone: <B>" + tbPhone + "</B><BR>"
                 + "<BR>&nbsp;&bull;&nbsp;&nbsp;Model: <B>" + tbModel + "</B><BR>"
                + "<BR>&nbsp;&bull;&nbsp;&nbsp;Comments: <B>" + tbComment + "</B>";

        AppEnv appenv = new AppEnv(m_context);
        string SMTPadmin = appenv.GetAppSetting("smtpAdmin").Trim();
        string SMTPServer = appenv.GetAppSetting("smtpserver").Trim();
        string emAddr = appenv.GetAppSetting("reqInfoEmAddr").Trim();

        if (SMTPServer.Length <= 0)
            return;  // do not use email notifications

        SmtpClient smtpClient = new SmtpClient();
        MailMessage message = new MailMessage();
        message.To.Add(emAddr);
        message.From = new MailAddress(SMTPadmin);
        message.Subject = emSubject;
        message.Body = emBody;
        message.IsBodyHtml = true;
        smtpClient.Send(message);

    }

}