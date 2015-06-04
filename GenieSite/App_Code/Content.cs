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

/// <summary>
/// Summary description for Content
/// </summary>
public class Content
{
    private SqlConnection m_Connection;

    public Content(SqlConnection Connection)
    {
        m_Connection = Connection;
    }

    public void Insert(string Headline, string Source, int Byline, string Anime, string Body, string Tagline, string Keywords,
                       int Specs, int Cad, int StandardFeatures, int SizeChart, int Options, int OperatorOptions, int TrackCfg, int Openers)
    {
        Insert(NextContentID(), 1, 0, Headline, Source, Byline, Anime, Body, Tagline, Keywords, Specs, Cad, StandardFeatures, SizeChart, Options, OperatorOptions, TrackCfg, Openers, 0, 0, Byline, StatusCodes.Creating);
    }

    public void Insert(int ContentID, int Version, int Protected, string Headline, string Source, int Byline, string Anime,
                       string Body, string Tagline, string Keywords, int Specs, int Cad, int StandardFeatures, int SizeChart, int Options, int OperatorOptions, int TrackCfg, int Openers, int Editor, int Approver, int UpdUserID, int Status)
    {
        SqlCommand Command = new SqlCommand("Content_Insert", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ContentID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Version", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Protected", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Headline", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Source", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Byline", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Anime", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Body", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Tagline", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Keywords", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@SpecsID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@CadID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@StandardFeaturesID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@SizeChartID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@OptionsID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@OperatorOptionsID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@TrackCfgID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@OpenersID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Editor", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Approver", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@UpdateUserID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ModifiedDate", SqlDbType.DateTime));
        Command.Parameters.Add(new SqlParameter("@CreationDate", SqlDbType.DateTime));

        Command.Parameters["@ContentID"].Value = ContentID;
        Command.Parameters["@Version"].Value = Version;
        Command.Parameters["@Protected"].Value = Protected;
        Command.Parameters["@Headline"].Value = Headline;
        Command.Parameters["@Source"].Value = Source;
        Command.Parameters["@Byline"].Value = Byline;
        Command.Parameters["@Anime"].Value = Anime;
        Command.Parameters["@Body"].Value = Body;
        Command.Parameters["@Tagline"].Value = Tagline;
        Command.Parameters["@Keywords"].Value = Keywords;
        Command.Parameters["@SpecsID"].Value = Specs;
        Command.Parameters["@CadID"].Value = Cad;
        Command.Parameters["@StandardFeaturesID"].Value = StandardFeatures;
        Command.Parameters["@SizeChartID"].Value = SizeChart;
        Command.Parameters["@OptionsID"].Value = Options;
        Command.Parameters["@OperatorOptionsID"].Value = OperatorOptions;
        Command.Parameters["@TrackCfgID"].Value = TrackCfg;
        Command.Parameters["@OpenersID"].Value = Openers;
        Command.Parameters["@Status"].Value = Status;
        Command.Parameters["@Editor"].Value = Editor;
        Command.Parameters["@Approver"].Value = Approver;
        Command.Parameters["@UpdateUserID"].Value = UpdUserID;
        Command.Parameters["@ModifiedDate"].Value = DateTime.Now;
        Command.Parameters["@CreationDate"].Value = DateTime.Now;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }


    public void RequestInfoInsert(string Fname, string Lname, string Company,
        string Addr1, string Addr2, string City,
        string State, string Region, string Zip, string Country,
        string Phone, string Email, int Newsletter, string TgtType,
        string TgtMarket, string TgtPurchase, int cb231, int cb417, int cb413, int cb167, int cb119,
        int cb161, int cb288, int cb333,
        int cb901, int cb902, int cbADM)
    {
        SqlCommand Command = new SqlCommand("Content_RequestInfoInsert", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@Fname", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Lname", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Company", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Addr1", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Addr2", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@City", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@State", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Region", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Zip", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Country", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Phone", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Email", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Newsletter", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@TgtType", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@TgtMarket", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@TgtPurchase", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@cb231", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb417", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb413", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb167", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb119", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb161", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb288", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb333", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb901", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cb902", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@cbADM", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@CreationDate", SqlDbType.DateTime));

        Command.Parameters["@Fname"].Value = Fname;
        Command.Parameters["@Lname"].Value = Lname;
        Command.Parameters["@Company"].Value = Company;
        Command.Parameters["@Addr1"].Value = Addr1;
        Command.Parameters["@Addr2"].Value = Addr2;
        Command.Parameters["@City"].Value = City;
        Command.Parameters["@State"].Value = State;
        Command.Parameters["@Region"].Value = Region;
        Command.Parameters["@Zip"].Value = Zip;
        Command.Parameters["@Country"].Value = Country;
        Command.Parameters["@Phone"].Value = Phone;
        Command.Parameters["@Email"].Value = Email;
        Command.Parameters["@Newsletter"].Value = Newsletter;
        Command.Parameters["@TgtType"].Value = TgtType;
        Command.Parameters["@TgtMarket"].Value = TgtMarket;
        Command.Parameters["@TgtPurchase"].Value = TgtPurchase;
        Command.Parameters["@cb231"].Value = cb231;
        Command.Parameters["@cb417"].Value = cb417;
        Command.Parameters["@cb413"].Value = cb413;
        Command.Parameters["@cb167"].Value = cb167;
        Command.Parameters["@cb119"].Value = cb119;
        Command.Parameters["@cb161"].Value = cb161;
        Command.Parameters["@cb288"].Value = cb288;
        Command.Parameters["@cb333"].Value = cb333;
        Command.Parameters["@cb901"].Value = cb901;
        Command.Parameters["@cb902"].Value = cb902;
        Command.Parameters["@cbADM"].Value = cbADM;
        Command.Parameters["@CreationDate"].Value = DateTime.Now;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

    public void FavInsert(int ContentID, int AccountID)
    {
        // INSERT INTO Content (ContentID, AccountID) 
        // VALUES (@ContentID, @AccountID)

        SqlCommand Command = new SqlCommand("Content_FavInsert", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ContentID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@AccountID", SqlDbType.Int));

        Command.Parameters["@ContentID"].Value = ContentID;
        Command.Parameters["@AccountID"].Value = AccountID;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }


    public void Update(int ContentID, int Version, int Protected, string Headline, string Source,
        int Byline, string Anime, string Body, string Tagline, string Keywords, int Specs, int Cad,
        int StandardFeatures, int SizeChart, int Options, int OperatorOptions, int TrackCfg,
        int Openers, int Editor, int Approver, int UpdUserID, int Status)
    {

        SqlCommand Command = new SqlCommand("Content_Update", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ContentID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Version", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Protected", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Headline", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Source", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Byline", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Anime", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Body", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Tagline", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Keywords", SqlDbType.Text));
        Command.Parameters.Add(new SqlParameter("@Specs", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Cad", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@StandardFeatures", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@SizeChart", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Options", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@OperatorOptions", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@TrackCfg", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Openers", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Editor", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Approver", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@UpdateUserID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ModifiedDate", SqlDbType.DateTime));

        Command.Parameters["@ContentID"].Value = ContentID;
        Command.Parameters["@Version"].Value = Version;
        Command.Parameters["@Protected"].Value = Protected;
        Command.Parameters["@Headline"].Value = Headline;
        Command.Parameters["@Source"].Value = Source;
        Command.Parameters["@Byline"].Value = Byline;
        Command.Parameters["@Anime"].Value = Anime;
        Command.Parameters["@Body"].Value = Body;
        Command.Parameters["@Tagline"].Value = Tagline;
        Command.Parameters["@Keywords"].Value = Keywords;
        Command.Parameters["@Specs"].Value = Specs;
        Command.Parameters["@Cad"].Value = Cad;
        Command.Parameters["@StandardFeatures"].Value = StandardFeatures;
        Command.Parameters["@SizeChart"].Value = SizeChart;
        Command.Parameters["@Options"].Value = Options;
        Command.Parameters["@OperatorOptions"].Value = OperatorOptions;
        Command.Parameters["@TrackCfg"].Value = TrackCfg;
        Command.Parameters["@Openers"].Value = Openers;
        Command.Parameters["@Status"].Value = Status;
        Command.Parameters["@Editor"].Value = Editor;
        Command.Parameters["@Approver"].Value = Approver;
        Command.Parameters["@UpdateUserID"].Value = UpdUserID;
        Command.Parameters["@ModifiedDate"].Value = DateTime.Now;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

    public void SetStatus(int ContentID, int Version, int Status)
    {
        SqlCommand Command = new SqlCommand("Content_SetStatus", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ContentID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Version", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ModifiedDate", SqlDbType.DateTime));

        Command.Parameters["@ContentID"].Value = ContentID;
        Command.Parameters["@Version"].Value = Version;
        Command.Parameters["@Status"].Value = Status;
        Command.Parameters["@ModifiedDate"].Value = DateTime.Now;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

    public void SetEditor(int ContentID, int Version, int Editor)
    {
        SqlCommand Command = new SqlCommand("Content_SetEditor", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ContentID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Version", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Editor", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ModifiedDate", SqlDbType.DateTime));

        Command.Parameters["@ContentID"].Value = ContentID;
        Command.Parameters["@Version"].Value = Version;
        Command.Parameters["@Editor"].Value = Editor;
        Command.Parameters["@Status"].Value = StatusCodes.Editing;
        Command.Parameters["@ModifiedDate"].Value = DateTime.Now;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

    public void SetApproval(int ContentID, int Version, int Approver)
    {

        SqlCommand Command = new SqlCommand("Content_SetApproval", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ContentID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Version", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Approver", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Status", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ModifiedDate", SqlDbType.DateTime));

        Command.Parameters["@ContentID"].Value = ContentID;
        Command.Parameters["@Version"].Value = Version;
        Command.Parameters["@Approver"].Value = Approver;
        Command.Parameters["@Status"].Value = StatusCodes.Approved;
        Command.Parameters["@ModifiedDate"].Value = DateTime.Now;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

    public void SetProtected(int ContentID, int Version, int isProtected)
    {

        SqlCommand Command = new SqlCommand("Content_SetProtected", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ContentID", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Version", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@Protected", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ModifiedDate", SqlDbType.DateTime));

        Command.Parameters["@ContentID"].Value = ContentID;
        Command.Parameters["@Version"].Value = Version;
        Command.Parameters["@Protected"].Value = isProtected;
        Command.Parameters["@ModifiedDate"].Value = DateTime.Now;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

    public int NextContentID()
    {
        // SELECT   DISTINCT ContentID 
        // FROM     Content
        // ORDER BY ContentID DESC

        SqlCommand Command = new SqlCommand("Content_NextContentID", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        if (ds.Tables["Content"].Rows.Count <= 0)
            return 1;

        return Convert.ToInt32(ds.Tables["Content"].Rows[0]["ContentID"]) + 1;
    }

    public DataTable GetHeadlines()
    {
        // Select   ContentID, Version, Headline, Status 
        // FROM     Content

        SqlCommand Command = new SqlCommand("Content_GetHeadlines", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetDealerInfo(int JDEID)
    {
        //SELECT email, contact_code, phone_prefix, phone_number, fax_prefix, fax_number 
        //FROM Contacts WHERE primary_jde = @JDEID and contact_code = 'WEB'

        SqlCommand Command = new SqlCommand("Content_GetDealerInfo", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@JDEID", SqlDbType.Int));
        Command.Parameters["@JDEID"].Value = JDEID;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "ContentID");

        return ds.Tables["ContentID"];
    }

    public DataTable GetJob(int JID)
    {
        // Select   *
        // FROM     JobPostings
        // Where job_posting_id = @JID

        SqlCommand Command = new SqlCommand("Content_GetJob", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@JID", SqlDbType.Int));
        Command.Parameters["@JID"].Value = JID;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "ContentID");

        return ds.Tables["ContentID"];
    }

    public DataTable GetContentForSiteSearchForSource(string Keywords, string source)
    {
        // 	SELECT DISTINCT ContentID AS Expr1, Headline
        //	FROM Content
        //	WHERE (Keywords LIKE '%@Keywords%') AND (Status = '64')

        SqlCommand Command = new SqlCommand("Content_GetContentForSiteSearchForSource", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@Keywords", SqlDbType.VarChar));
        Command.Parameters["@Keywords"].Value = Keywords;

        Command.Parameters.Add(new SqlParameter("@source", SqlDbType.VarChar));
        Command.Parameters["@source"].Value = source;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetJobs()
    {
        // Select   *
        // FROM     JobPostings

        SqlCommand Command = new SqlCommand("Content_GetJobs", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetZippy(int ZIPID)
    {
        // SELECT DISTINCT 
        // Customers.primary_jde, Customers.address_number, Customers.odc_website, Customers.company_title, Customers.mailing_name, 
        // Customers.shipping_addr_1, Customers.shipping_addr_2, Customers.shipping_city, Customers.shipping_state, Customers.shipping_postal_code, 
        // Customers.shipping_tollfree_prefix, Customers.shipping_tollfree_number, Customers.shipping_phone_prefix, Customers.shipping_phone_number, 
        // Customers.shipping_fax_prefix, Customers.shipping_fax_number
        // FROM Customer_Zipcode INNER JOIN
        // Customers ON Customer_Zipcode.primary_jde = Customers.primary_jde INNER JOIN
        // Division_Customer ON Customers.primary_jde = Division_Customer.primary_jde
        // WHERE (Customer_Zipcode.zipcode = @ZIPID) AND (LOWER(Division_Customer.division_id) = 'd')
        // ORDER BY Customers.company_title

        SqlCommand Command = new SqlCommand("Content_GetZippy", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ZIPID", SqlDbType.Int));
        Command.Parameters["@ZIPID"].Value = ZIPID;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "ContentID");

        return ds.Tables["ContentID"];
    }

    public DataTable GetZippy2(int ZIPID)
    {
        SqlCommand Command = new SqlCommand("Content_GetZippy2", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@ZIPID", SqlDbType.Int));
        Command.Parameters["@ZIPID"].Value = ZIPID;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "ContentID");

        return ds.Tables["ContentID"];
    }

    public DataTable GetFavorites(int AccountID)
    {
        // Select   ContentID, AccountID 
        // FROM     Content
        // WHERE AccountID = @AccountID

        SqlCommand Command = new SqlCommand("Content_GetFavorites", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@AccountID", SqlDbType.Int));
        Command.Parameters["@AccountID"].Value = AccountID;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "ContentID");

        return ds.Tables["ContentID"];
    }

    public DataTable GetHeadlinesForAuth(int Byline)
    {
        //   SELECT ContentID, Version, Headline, Status 
        //     FROM Content
        //    WHERE Byline=@Byline 

        SqlCommand Command = new SqlCommand("Content_GetHeadlinesForAuth", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@Byline", SqlDbType.Int));
        Command.Parameters["@Byline"].Value = Byline;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetHeadlinesForFromAuth(int Byline)
    {
        //   SELECT ContentID, Version, Headline, Status 
        //     FROM Content
        //    WHERE Byline=@Byline 

        SqlCommand Command = new SqlCommand("Content_GetHeadlinesForFromAuth", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@Byline", SqlDbType.Int));
        Command.Parameters["@Byline"].Value = Byline;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }


    public DataTable GetHeadlinesForFromAuth1(string SS)
    {
        //   SELECT ContentID, Version, Headline, Status 
        //     FROM Content
        //    WHERE Byline=@Byline 

        SqlCommand Command = new SqlCommand("Content_GetHeadlinesForFromAuth1", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@SS", SqlDbType.VarChar));
        Command.Parameters["@SS"].Value = SS;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }


    public DataTable GetTemplateContent()
    {
        //   SELECT ContentID, Version, Headline, Status 
        //     FROM Content
        //    WHERE Byline=@Byline 

        SqlCommand Command = new SqlCommand("Content_GetTemplateContent", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        //Command.Parameters.Add(new SqlParameter("@Byline", SqlDbType.Int));
        //Command.Parameters["@Byline"].Value = Byline;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetHeadlinesForEdit(int Editor)
    {
        //   SELECT ContentID, Version, Headline, Status 
        //     FROM Content
        //    WHERE Editor=@Editor 
        //       OR Editor=0

        SqlCommand Command = new SqlCommand("Content_GetHeadlinesForEdit", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@Editor", SqlDbType.Int));
        Command.Parameters["@Editor"].Value = Editor;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetHeadlinesForApprove(int Approver)
    {
        //   SELECT ContentID, Version, Headline, Status 
        //     FROM Content
        //    WHERE Approver=@Approver 
        //       OR Approver=0

        SqlCommand Command = new SqlCommand("Content_GetHeadlinesForApprove", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@Approver", SqlDbType.Int));
        Command.Parameters["@Approver"].Value = Approver;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetContentForID(int cid)
    {
        // SELECT * 
        // FROM Content 
        // WHERE ContentID=@cid

        SqlCommand Command = new SqlCommand("Content_GetContentForID", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
        Command.Parameters["@cid"].Value = cid;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetContentForSiteSearchGenie(string Keywords)
    {
        // 	SELECT DISTINCT ContentID AS Expr1, Headline
        //	FROM Content
        //	WHERE (Keywords LIKE '%@Keywords%') AND (Status = '64')

        SqlCommand Command = new SqlCommand("Content_GetContentForSiteSearchGenie", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@Keywords", SqlDbType.VarChar));
        Command.Parameters["@Keywords"].Value = Keywords;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetOpenersForID(int cid)
    {
        // SELECT OpenersID 
        // FROM Content 
        // WHERE ContentID=@cid

        SqlCommand Command = new SqlCommand("Content_GetContentForID", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
        Command.Parameters["@cid"].Value = cid;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetSizeChartForID(int cid)
    {
        // SELECT SizeChartID 
        // FROM Content 
        // WHERE ContentID=@cid

        SqlCommand Command = new SqlCommand("Content_GetContentForID", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
        Command.Parameters["@cid"].Value = cid;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetWinOptForID(int cid)
    {
        // SELECT OptionsID 
        // FROM Content 
        // WHERE ContentID=@cid

        SqlCommand Command = new SqlCommand("Content_GetContentForID", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
        Command.Parameters["@cid"].Value = cid;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }

    public DataTable GetContentForPID(int cid)
    {
        DataTable table = new DataTable();
        SqlCommand Command = new SqlCommand("Content_GetContentForPIDAndSource", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@source", SqlDbType.VarChar));
        Command.Parameters["@cid"].Value = cid;
        Command.Parameters["@source"].Value = "GENIE";

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");
        if (ds.Tables["Content"].Rows.Count > 0)
        {
            table = ds.Tables["Content"];
        }
        else
        {
            string strErrorMessage = "Content.cs, GetContentForPID - Exception.<br>The dataset was empty.";
            ErrorLogging.LogError(strErrorMessage);
        }
        return table;
    }

    public DataRow GetContentForIDVer(int cid, int ver)
    {
        // SELECT * 
        // FROM Content 
        // WHERE ContentID=@cid
        //   AND Version=@ver

        SqlCommand Command = new SqlCommand("Content_GetContentForIDVer", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ver", SqlDbType.Int));
        Command.Parameters["@cid"].Value = cid;
        Command.Parameters["@ver"].Value = ver;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        if (ds.Tables["Content"].Rows.Count > 0)
            return ds.Tables["Content"].Rows[0];
        else
            return null;
    }


    public DataRow GetContentForIDandSource()
    {
        // SELECT * 
        // FROM Content, Source 

        SqlCommand Command = new SqlCommand("Content_GetContentForIDVer", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        if (ds.Tables["Content"].Rows.Count > 0)
            return ds.Tables["Content"].Rows[0];
        else
            return null;
    }

    public void Remove(int cid, int ver)
    {
        // DELETE FROM Content 
        // WHERE ContentID=@cid
        //   AND Version=@ver

        SqlCommand Command = new SqlCommand("Content_Remove", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
        Command.Parameters.Add(new SqlParameter("@ver", SqlDbType.Int));
        Command.Parameters["@cid"].Value = cid;
        Command.Parameters["@ver"].Value = ver;

        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }


    public DataTable GetStateCountryCodes(string StateDesc)
    {
        SqlCommand Command = new SqlCommand("Content_GetCodes", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;
        Command.Parameters.Add(new SqlParameter("@StateDesc", SqlDbType.Char, 64));
        Command.Parameters["@StateDesc"].Value = StateDesc;

        SqlDataAdapter DAdpt = new SqlDataAdapter(Command);

        DataSet ds = new DataSet();
        DAdpt.Fill(ds, "Content");

        return ds.Tables["Content"];
    }



    public void WarrantyInsert(string Fname, string Lname, string Addr1, string Addr2, string City, string State, string Zip, string Country, string Phone, string PhoneType, string AltPhone, string AltPhoneType, string Email, string ModelNumber, string PurchaseDate, string SerialNumber, string PlaceOfPurchase, string InstalledBy, string today)
    {
        // INSERT INTO Warranty (Fname, Lname, Addr1, Addr2, City, State, Zip, Country, Phone, PhoneType,
        //                       AltPhone, AltPhoneType, Email, ModelNumber, PurchaseDate, SerialNumber, 
        //						 PlaceOfPurchase, InstalledBy) 
        // VALUES (@Fname, @Lname, @Addr1, @Addr2, @City, @State, @Zip, @Country, @Phone, @PhoneType,
        //                       @AltPhone, @AltPhoneType, @Email, @ModelNumber, @PurchaseDate, @SerialNumber, 
        //						 @PlaceOfPurchase, @InstalledBy)

        SqlCommand Command = new SqlCommand("Content_Warranty_Insert", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@Fname", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@Lname", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@Addr1", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@Addr2", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@City", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@State", SqlDbType.Char, 32));
        Command.Parameters.Add(new SqlParameter("@Zip", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@Country", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@Phone", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@PhoneType", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@AltPhone", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@AltPhoneType", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@Email", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@ModelNumber", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@PurchaseDate", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@SerialNumber", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@PlaceOfPurchase", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@InstalledBy", SqlDbType.Char, 64));
        Command.Parameters.Add(new SqlParameter("@RegisterDate", SqlDbType.Char, 64));

        Command.Parameters["@Fname"].Value = Fname;
        Command.Parameters["@Lname"].Value = Lname;
        Command.Parameters["@Addr1"].Value = Addr1;
        Command.Parameters["@Addr2"].Value = Addr2;
        Command.Parameters["@City"].Value = City;
        Command.Parameters["@State"].Value = State;
        Command.Parameters["@Zip"].Value = Zip;
        Command.Parameters["@Country"].Value = Country;
        Command.Parameters["@Phone"].Value = Phone;
        Command.Parameters["@PhoneType"].Value = PhoneType;
        Command.Parameters["@AltPhone"].Value = AltPhone;
        Command.Parameters["@AltPhoneType"].Value = AltPhoneType;
        Command.Parameters["@Email"].Value = Email;
        Command.Parameters["@ModelNumber"].Value = ModelNumber;
        Command.Parameters["@PurchaseDate"].Value = PurchaseDate;
        Command.Parameters["@SerialNumber"].Value = SerialNumber;
        Command.Parameters["@PlaceOfPurchase"].Value = PlaceOfPurchase;
        Command.Parameters["@InstalledBy"].Value = InstalledBy;
        Command.Parameters["@RegisterDate"].Value = today;
        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

    public void RegistrationInsert(string acctNumber, string purchaseBy, string companyName, string Addr1, string Addr2, string City, string State, string Zip, string Country, string Phone, string Fax, string Email, string FName, string LName, string Title, string EPhone, string EFax, string EEmail, string EPref)
    {
        // INSERT INTO Warranty (Fname, Lname, Addr1, Addr2, City, State, Zip, Country, Phone, PhoneType,
        //                       AltPhone, AltPhoneType, Email, ModelNumber, PurchaseDate, SerialNumber, 
        //						 PlaceOfPurchase, InstalledBy) 
        // VALUES (@Fname, @Lname, @Addr1, @Addr2, @City, @State, @Zip, @Country, @Phone, @PhoneType,
        //                       @AltPhone, @AltPhoneType, @Email, @ModelNumber, @PurchaseDate, @SerialNumber, 
        //						 @PlaceOfPurchase, @InstalledBy)

        SqlCommand Command = new SqlCommand("Content_Registration_Insert", m_Connection);
        Command.CommandType = CommandType.StoredProcedure;

        Command.Parameters.Add(new SqlParameter("@account_number", SqlDbType.Char, 100));
        Command.Parameters.Add(new SqlParameter("@purchase_from", SqlDbType.Char, 100));
        Command.Parameters.Add(new SqlParameter("@company_name", SqlDbType.Char, 100));
        Command.Parameters.Add(new SqlParameter("@company_address_1", SqlDbType.Char, 100));
        Command.Parameters.Add(new SqlParameter("@company_address_2", SqlDbType.Char, 100));
        Command.Parameters.Add(new SqlParameter("@city", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@state", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@postal_code", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@country", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@company_phone", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@company_fax", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@company_email", SqlDbType.Char, 100));
        Command.Parameters.Add(new SqlParameter("@first_name", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@last_name", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@title", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@employee_phone", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@employee_fax", SqlDbType.Char, 50));
        Command.Parameters.Add(new SqlParameter("@employee_email", SqlDbType.Char, 100));
        Command.Parameters.Add(new SqlParameter("@contact_method", SqlDbType.Char, 50));

        Command.Parameters["@account_number"].Value = acctNumber;
        Command.Parameters["@purchase_from"].Value = purchaseBy;
        Command.Parameters["@company_name"].Value = companyName;
        Command.Parameters["@company_address_1"].Value = Addr1;
        Command.Parameters["@company_address_2"].Value = Addr2;
        Command.Parameters["@city"].Value = City;
        Command.Parameters["@state"].Value = State;
        Command.Parameters["@postal_code"].Value = Zip;
        Command.Parameters["@country"].Value = Country;
        Command.Parameters["@company_phone"].Value = Phone;
        Command.Parameters["@company_fax"].Value = Fax;
        Command.Parameters["@company_email"].Value = Email;
        Command.Parameters["@first_name"].Value = FName;
        Command.Parameters["@last_name"].Value = LName;
        Command.Parameters["@title"].Value = Title;
        Command.Parameters["@employee_phone"].Value = EPhone;
        Command.Parameters["@employee_fax"].Value = EFax;
        Command.Parameters["@employee_email"].Value = EEmail;
        Command.Parameters["@contact_method"].Value = EPref;
        try
        {
            m_Connection.Open();
            Command.ExecuteNonQuery();
        }
        finally
        {
            m_Connection.Close();
        }
    }

}