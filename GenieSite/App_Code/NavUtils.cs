using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class NavUtils
{
    public NavUtils()
	{

    }
    
    public static string GetApplicationPath(HttpRequest request)
    {
        string path = "";
        try
        {
            if (request.ApplicationPath != "/")
            {
                path = request.ApplicationPath;
            }
        }
        catch (Exception e)
        {
            string msg = e.StackTrace;
        }
        return path;
    }

}