using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections.Specialized;
using ODC.Security;

/// <summary>
/// Summary description for AppEnv
/// </summary>
public class AppEnv
{
    HttpContext context;

    public AppEnv(HttpContext Context)
    {
        context = Context;
    }

    public string GetAppSetting(string setting)
    {
        string val;
        try
        {

            val = (string)(System.Web.Configuration.WebConfigurationManager.AppSettings)[setting];
        }
        catch (NullReferenceException)
        {
            val = "";
        }

        if (val == null)
            val = "";

        return val;
    }

    public SqlConnection GetConnection()
    {
        SqlConnection con = new SqlConnection();
        try
        {
            //con.ConnectionString = ConnectionStringManager.GetConnectionString("CMS", "SQL", System.Web.Configuration.WebConfigurationManager.AppSettings["Mode"]);
            con.ConnectionString = System.Web.Configuration.WebConfigurationManager.AppSettings["CMS_Connection_String"];
        }
        catch (Exception ex)
        {
            con.ConnectionString = "";
            string strErrorMessage = "Exception.<br>" + ex.Message;
            ErrorLogging.LogError(strErrorMessage);
        }
        return con;
    }

    public SqlConnection GetGenieConnection()
    {
        SqlConnection con = new SqlConnection();
        //con.ConnectionString = ConnectionStringManager.GetConnectionString("GENIE_WEB", "SQL", System.Web.Configuration.WebConfigurationManager.AppSettings["Mode"]);
        con.ConnectionString = System.Web.Configuration.WebConfigurationManager.AppSettings["GENIE_WEB_Connection_String"];
        return con;
    }
    public SqlConnection GetJobsConnection()
    {
        SqlConnection con = new SqlConnection();
        //con.ConnectionString = ConnectionStringManager.GetConnectionString("ODC_WEB", "SQL", System.Configuration.ConfigurationManager.AppSettings["Mode"]);
        con.ConnectionString = System.Web.Configuration.WebConfigurationManager.AppSettings["ODC_WEB_Connection_String"];
        return con;
    }
}
