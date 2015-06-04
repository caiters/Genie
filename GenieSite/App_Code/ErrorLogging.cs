using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Diagnostics;

/// <summary>
/// Summary description for errorLogging
/// </summary>
public class ErrorLogging
{
		public ErrorLogging()
		{
			//
			// TODO: Add constructor logic here
			//
		}

		public static void LogError(string errorMessage)
		{
            string EventLogName = System.Web.Configuration.WebConfigurationManager.AppSettings["AppName"];

			// Add a record to the event log
			EventLog errorLog = new EventLog();
			errorLog.Source = EventLogName;
			errorLog.WriteEntry("Error Description:  " + errorMessage);
			errorLog.Dispose();
				
		}
	}
