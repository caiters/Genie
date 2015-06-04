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
public class CommonItemLists
{
    public CommonItemLists()
    {


    }

    public List<StateEntry> StateList(AppEnv appEnv)
    {
        List<StateEntry> stateList = new List<StateEntry>();

        String connectionMethod = WebConfigurationManager.AppSettings.Get("ConnectionMethod");

        if (connectionMethod == "Mock")
        {
            stateList.Add(new StateEntry("OH", "US", "Ohio"));
            stateList.Add(new StateEntry("PA", "US", "Pennsylvania"));
            stateList.Add(new StateEntry("NY", "US", "New York"));
            stateList.Add(new StateEntry("FL", "US", "Florida"));
            stateList.Sort();
            return stateList;
        }

        String sql = "Select [StateCode],[CountryCode],[StateDesc] FROM [StateCodes] ORDER BY [StateCode]";
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
                    stateList.Add(new StateEntry(row["StateCode"].ToString(), row["CountryCode"].ToString(), row["StateDesc"].ToString()));
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

        stateList.Sort();

        return stateList;
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
}