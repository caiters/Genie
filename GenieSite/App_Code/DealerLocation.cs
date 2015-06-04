using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DealerLocation
/// </summary>
public class DealerLocation
{
	public DealerLocation()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string dealerName { get; set; }
    public string hours { get; set; }
    public bool hours24 { get; set; }
    public string mottoSlogan { get; set; }
    public string yearFounded { get; set; }
    public string history { get; set; }
    public string otherInformationTitle { get; set; }
    public string email { get; set; }
    public string otherInformation { get; set; }
    public string goldPlatinumStatus { get; set; }
    public bool retail { get; set; }
    public bool residential { get; set; }
    public bool commercial { get; set; }
    public float distance { get; set; }
    public bool wholesaleOnly { get; set; }
    public string genieDealer { get; set; }

    public DealerLocatorPhoneNumber dealerPhone { get; set; }
    public DealerLocatorPhoneNumber fax { get; set; }
    //public DealerLocatorPhoneNumber emergencyPhone { get; set; }
    public DealerLocatorAddress address { get; set; }
}