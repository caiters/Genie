using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DealerLocationResponse
/// </summary>
public class DealerLocatorResponse
{
	public DealerLocatorResponse()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DealerLocatorStructure locations { get; set; }
    public List<DealerLocation> getProfessionalDealers(){
        if(locations.pros!=null)return locations.pros[0].dealerLocation;
        return new List<DealerLocation>();
    }
    public List<DealerLocation> getRetailDealers()
    {
        if (locations.retailers != null) return locations.retailers[0].dealerLocation;
        return new List<DealerLocation>();
    }
    public SearchLocation getLocation()
    {
        if (locations.location != null) return locations.location;
        return new SearchLocation();
    }
}