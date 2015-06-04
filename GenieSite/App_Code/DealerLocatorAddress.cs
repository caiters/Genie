using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DealerLocatorAddress
/// </summary>
public class DealerLocatorAddress
{
	public DealerLocatorAddress()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string street1 { get; set; }
    public string street2 { get; set; }
    public string city { get; set; }
    public string state { get; set; }
    public string postalCode { get; set; }
    public float latitude { get; set; }
    public float longitude { get; set; }
}