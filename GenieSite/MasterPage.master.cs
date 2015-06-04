using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private string _BodyClass;
    public string BodyClass
    {
        get { return _BodyClass; }
        set { _BodyClass = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        // Initialize body class to default of "genie_page"
        if (this._BodyClass == "") this._BodyClass = "genie_page";

    }

}
