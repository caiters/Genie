using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DealerLocatorStructure
/// </summary>
public class DealerLocatorStructure
{
	public DealerLocatorStructure()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public List<DealerLocationCollection> pros { get; set; }
    public List<DealerLocationCollection> retailers { get; set; }
    public SearchLocation location { get; set; }

}