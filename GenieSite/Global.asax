<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
        
        // Check to see if this page has been moved
        CheckForRedirect();
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    public void CheckForRedirect()
    {

        // Read the file lines into a string array.
        String rootPath = Server.MapPath("~");
        string[] lines = System.IO.File.ReadAllLines(rootPath + @"\data\redirect-list.csv");


        string pagepath = Request.Url.PathAndQuery.Replace(Request.ApplicationPath, "");

        System.Console.WriteLine("Contents of writeLines2.txt =:");
        foreach (string line in lines)
        {
            string[] fields = line.Split(',');
            if (fields.Length >= 2)
            {
                if (fields[0].Equals(pagepath))
                {
                    Response.StatusCode = 301;
                    Response.StatusCode = (int)System.Net.HttpStatusCode.MovedPermanently;
                    //Response.Status = System.Net.HttpStatusCode.MovedPermanently.ToString();
                    Response.RedirectLocation = Request.ApplicationPath + fields[1];
                    Response.End();
                }
            }
        }
    }           
</script>
