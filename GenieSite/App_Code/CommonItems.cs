using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for CommonItemLists
/// </summary>
public class CommonItems
{
    public CommonItems()
    {

    }

    public StateEntry GetState(AppEnv appEnv, string StateCode, string StateName)
    {
        DataSet dataSource = new DataSet();
        String connectionMethod = WebConfigurationManager.AppSettings.Get("ConnectionMethod");
        String sql = "Select [StateCode],[CountryCode],[StateDesc] FROM [StateCodes] WHERE [StateCode] = @statecode AND [StateDesc] = @statedescr";

        if (connectionMethod == "Mock")
        {
            return new StateEntry(StateCode, "US", StateName);
        }

        StateEntry state = new StateEntry("XX", "US", "Unknown");

        using (SqlConnection sqlConnection = new SqlConnection(appEnv.GetGenieConnection().ConnectionString))
        {
            try
            {
                SqlCommand sqlCommand = sqlConnection.CreateCommand();
                sqlCommand.CommandText = sql;
                sqlCommand.Parameters.Add("@statecode", SqlDbType.NVarChar);
                sqlCommand.Parameters["@statecode"].Value = StateCode;
                sqlCommand.Parameters.Add("@statedescr", SqlDbType.NVarChar);
                sqlCommand.Parameters["@statedescr"].Value = StateName;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);
                int numberOfRows = dataAdapter.Fill(dataSource);
                if (dataSource.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow row in dataSource.Tables[0].Rows)
                    {
                        state = new StateEntry(row["StateCode"].ToString(), row["CountryCode"].ToString(), row["StateDesc"].ToString());
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                string msg = ex.StackTrace;
            }

           
        }

        return state;
    }


    public List<ModelEntry> ModelList(AppEnv appEnv)
    {
        List<ModelEntry> modelList = new List<ModelEntry>();

        String connectionMethod = WebConfigurationManager.AppSettings.Get("ConnectionMethod");

        if (connectionMethod == "Mock")
        {
            modelList.Add(new ModelEntry(1, "US", "Ohio"));
            modelList.Add(new ModelEntry(2, "US", "Pennsylvania"));
            modelList.Add(new ModelEntry(3, "US", "New York"));
            modelList.Add(new ModelEntry(4, "US", "Florida"));
            modelList.Sort();
            return modelList;
        }

        String sql = "Select [MID],[ModelNum],[ModelDesc] FROM [Models] ORDER BY [ModelDesc]";
        SqlConnection mycn = appEnv.GetGenieConnection();
        try
        {
            SqlDataAdapter myda = new SqlDataAdapter(sql, mycn);
            DataSet ds = new DataSet();
            myda.Fill(ds, "Table");

            if (ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    modelList.Add(new ModelEntry(Convert.ToInt32(row["MID"]), row["ModelNum"].ToString(), row["ModelDesc"].ToString()));
                }
            }
        }
        finally
        {
            if (mycn != null)
            {
                mycn.Close();
            }
        }

        modelList.Sort();

        return modelList;
    }

    public CMSEntry GetCMSEntry(AppEnv appEnv, int ContentID)
    {
        String connectionMethod = WebConfigurationManager.AppSettings.Get("ConnectionMethod");
        CMSEntry cmsEntry = new CMSEntry();
        if (connectionMethod == "Mock")
        {
            cmsEntry.TagLine = "History of The Genie Company";
            cmsEntry.Body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
            cmsEntry.Keywords = "Company History";
            return cmsEntry;
        }

        SqlConnection sqlConnection = appEnv.GetConnection();
        try
        {
            DataTable table = new DataTable();
            SqlCommand sqlCommand = new SqlCommand("Content_GetContentForPIDAndSource", sqlConnection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add(new SqlParameter("@cid", SqlDbType.Int));
            sqlCommand.Parameters["@cid"].Value = ContentID;
            sqlCommand.Parameters.Add(new SqlParameter("@source", SqlDbType.VarChar));
            sqlCommand.Parameters["@source"].Value = "GENIE";

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            sqlConnection.Open();

            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet, "Content");
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dataSet.Tables[0].Rows)
                {
                    cmsEntry.ContentID =  Convert.ToInt32(row["ContentID"]);
                    cmsEntry.Version =  Convert.ToInt32(row["Version"]);
                    cmsEntry.Protected =  Convert.ToInt32(row["Protected"]);
                    cmsEntry.Headline =  row["Headline"].ToString();
                    cmsEntry.AnimeName =  row["AnimeName"].ToString();
                    cmsEntry.Source =  row["Source"].ToString();
                    cmsEntry.ByLine =  Convert.ToInt32(row["ByLine"]);
                    cmsEntry.Teaser =  row["Teaser"].ToString();
                    cmsEntry.Body =  row["Body"].ToString();
                    cmsEntry.TagLine =  row["TagLine"].ToString();
                    cmsEntry.Keywords =  row["Keywords"].ToString();
                    cmsEntry.SpecsID =  row["SpecsID"].ToString();
                    cmsEntry.CadID = Convert.ToInt32(row["CadID"]);
                    cmsEntry.StandardFeaturesID = Convert.ToInt32(row["StandardFeaturesID"]);
                    cmsEntry.SizeChartID = Convert.ToInt32(row["SizeChartID"]);
                    cmsEntry.OptionsID = Convert.ToInt32(row["OptionsID"]);
                    cmsEntry.OperatorOptionsID = Convert.ToInt32(row["OperatorOptionsID"]);
                    cmsEntry.TrackCfgID = Convert.ToInt32(row["TrackCfgID"]);
                    cmsEntry.OpenersID = Convert.ToInt32(row["OpenersID"]);
                    cmsEntry.Status = Convert.ToInt32(row["Status"]);
                    cmsEntry.Editor = Convert.ToInt32(row["Editor"]);
                    cmsEntry.Approver = Convert.ToInt32(row["Approver"]);
                    cmsEntry.UpdateUserID = Convert.ToInt32(row["UpdateUserID"]);
                    cmsEntry.ModifiedDate = Convert.ToDateTime(row["ModifiedDate"]);
                    cmsEntry.CreationDate = Convert.ToDateTime(row["CreationDate"]);
                    cmsEntry.PostedToProduction = Convert.ToBoolean(row["PostedToProd"]);
                    break;
                }
            }
        }
        finally
        {
            if (sqlConnection != null)
            {
                sqlConnection.Close();
            }
        }

        return cmsEntry;
    }
}   