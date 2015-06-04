using System;
using System.Collections.Generic;
using System.Web;
using System.Text;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Web.Script.Serialization;
using System.Web.Configuration;

/// <summary>
/// Summary description for DealerLocatorRequest
/// </summary>
public class DealerLocatorRequest
{
	public DealerLocatorRequest(String location)
	{
		//
		// TODO: Add constructor logic here
		//
        search(location);
	}

    public DealerLocatorResponse locatorResponse { get; set; }

    private void search(String location)
    {
        String dealerLocatorSourcePath = WebConfigurationManager.AppSettings.Get("DealerLocatorSourcePath");
        String connectionMethod = WebConfigurationManager.AppSettings.Get("ConnectionMethod");

        
        //Works from www now, internal connection not required
        if (connectionMethod == "Mock")
        {
            // TODO: create mock DealerLocatorResponse for testing without access to the dealer locator
            locatorResponse = getMockupResult();
            return;
        } 

        String strResult;
        WebRequest objRequest = HttpWebRequest.Create(@dealerLocatorSourcePath+"/api/rest/dl?b=2&mc=1&r=150&location=" + location);
      //  WebRequest objRequest = HttpWebRequest.Create("http://mh800-04:8080/partners/api/rest/dl?b=2&mc=1&r=150&location=" + location);
        WebResponse objResponse = objRequest.GetResponse();
        using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
        {
            strResult = sr.ReadToEnd();
            sr.Close();
        }

        // For some reason the MS Deserializer doesn't agree with the JSON syntax that is returned by the WD Dealer Rest Service, hence the following string modifications.
        strResult = strResult.Replace("[\"\"]", "[]");
        strResult = strResult.Replace(",\"dealerPhone\":\"\"", "");
        strResult = strResult.Replace(",\"emergencyPhone\":\"\"", "");
        strResult = strResult.Replace(",\"fax\":\"\"", "");
        if(strResult.StartsWith("{\"locations\":{\"pros\":[{\"dealerLocation\":{\"")) {
            strResult = strResult.Replace("{\"locations\":{\"pros\":[{\"dealerLocation\":{\"", "{\"locations\":{\"pros\":[{\"dealerLocation\":[{\"");
            strResult = strResult.Replace("}}}],\"retailers\":[],\"location\":{", "}}]}],\"retailers\":[],\"location\":{");
        }

        JavaScriptSerializer ser = new JavaScriptSerializer();
        locatorResponse = ser.Deserialize<DealerLocatorResponse>(strResult);

    }

    private DealerLocatorResponse getMockupResult()
    {
        DealerLocatorResponse response = new DealerLocatorResponse();
        response.locations = new DealerLocatorStructure();

        response.locations.pros = new List<DealerLocationCollection>();
        DealerLocationCollection proCollectionObject = new DealerLocationCollection();
        proCollectionObject.dealerLocation = new List<DealerLocation>();

        DealerLocation loc = new DealerLocation();
        loc.dealerName = "Sample Dealer";
        loc.distance = 12.2f;
        loc.address = new DealerLocatorAddress();
        loc.address.street1 = "123 Fourth Street SW";
        loc.address.city = "Bolivar";
        loc.address.state = "OH";
        loc.address.postalCode = "23489";
        loc.dealerPhone = new DealerLocatorPhoneNumber();
        loc.dealerPhone.phoneNumber = "330-456-5915";
        proCollectionObject.dealerLocation.Add(loc);

        loc = new DealerLocation();
        loc.dealerName = "Sample Dealer 2";
        loc.distance = 12.2f;
        loc.address = new DealerLocatorAddress();
        loc.address.street1 = "123 Fourth Street SW";
        loc.address.city = "Bolivar";
        loc.address.state = "OH";
        loc.address.postalCode = "23489";
        loc.dealerPhone = new DealerLocatorPhoneNumber();
        loc.dealerPhone.phoneNumber = "330-456-5915";
        proCollectionObject.dealerLocation.Add(loc);


        loc = new DealerLocation();
        loc.dealerName = "Sample Dealer 3";
        loc.distance = 12.2f;
        loc.address = new DealerLocatorAddress();
        loc.address.street1 = "123 Fourth Street SW";
        loc.address.city = "Bolivar";
        loc.address.state = "OH";
        loc.address.postalCode = "23489";
        loc.dealerPhone = new DealerLocatorPhoneNumber();
        loc.dealerPhone.phoneNumber = "330-456-5915";
        proCollectionObject.dealerLocation.Add(loc);

        response.locations.pros.Add(proCollectionObject);


        response.locations.retailers = new List<DealerLocationCollection>();
        DealerLocationCollection retailerCollectionObject = new DealerLocationCollection();
        retailerCollectionObject.dealerLocation = new List<DealerLocation>();

        loc = new DealerLocation();
        loc.dealerName = "Sample Retailer";
        loc.distance = 12.2f;
        loc.address = new DealerLocatorAddress();
        loc.address.street1 = "123 Fourth Street SW";
        loc.address.city = "Bolivar";
        loc.address.state = "OH";
        loc.address.postalCode = "23489";
        loc.dealerPhone = new DealerLocatorPhoneNumber();
        loc.dealerPhone.phoneNumber = "330-456-5915";
        retailerCollectionObject.dealerLocation.Add(loc);

        loc = new DealerLocation();
        loc.dealerName = "Sample Retailer 2";
        loc.distance = 12.2f;
        loc.address = new DealerLocatorAddress();
        loc.address.street1 = "123 Fourth Street SW";
        loc.address.city = "Bolivar";
        loc.address.state = "OH";
        loc.address.postalCode = "23489";
        loc.dealerPhone = new DealerLocatorPhoneNumber();
        loc.dealerPhone.phoneNumber = "330-456-5915";
        retailerCollectionObject.dealerLocation.Add(loc);


        loc = new DealerLocation();
        loc.dealerName = "Sample Retailer 3";
        loc.distance = 12.2f;
        loc.address = new DealerLocatorAddress();
        loc.address.street1 = "123 Fourth Street SW";
        loc.address.city = "Bolivar";
        loc.address.state = "OH";
        loc.address.postalCode = "23489";
        loc.dealerPhone = new DealerLocatorPhoneNumber();
        loc.dealerPhone.phoneNumber = "330-456-5915";
        retailerCollectionObject.dealerLocation.Add(loc);

        response.locations.retailers.Add(retailerCollectionObject);

        return response;
    }
}