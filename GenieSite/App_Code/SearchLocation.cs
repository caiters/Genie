using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DealerLocation
/// </summary>
public class SearchLocation
{
    public SearchLocation()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public float latitude { get; set; }
    public float longitude { get; set; }
    public string street { get; set; }
    public string city { get; set; }
    public string state { get; set; }
    public string postalCode { get; set; }
    public string country { get; set; }

}