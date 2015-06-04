using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Data.Odbc;
using System.Web.Script.Serialization;
using System.Web.Script.Services;

/// <summary>
/// Web services to query the book database. All methods return JSON data.
/// </summary>
[WebService(Description = "Web services to query the book database.", Namespace = "http://www.williamsportwebdeveloper.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
public class BookServices : System.Web.Services.WebService
{
    public BookServices()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
    [WebMethod(Description = "Gets the books matching part of a title.")]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public string GetBooksByTitle(string strTitle)
    {
         JavaScriptSerializer js = new JavaScriptSerializer();
         string strJSON = js.Serialize("test");
         return strJSON;
    }

}