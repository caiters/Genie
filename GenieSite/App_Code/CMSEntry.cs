using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CMSEntry
/// </summary>
public class CMSEntry
{
	public CMSEntry()
	{
	}

    public int ContentID { get; set; }
    public int Version { get; set; }
    public int Protected { get; set; }
    public string Headline { get; set; }
    public string AnimeName { get; set; }
    public string Source { get; set; }
    public int ByLine { get; set; }
    public string Teaser { get; set; }
    public string Body { get; set; }
    public string TagLine { get; set; }
    public string Keywords { get; set; }
    public string SpecsID { get; set; }
    public int CadID { get; set; }
    public int StandardFeaturesID { get; set; }
    public int SizeChartID { get; set; }
    public int OptionsID { get; set; }
    public int OperatorOptionsID { get; set; }
    public int TrackCfgID { get; set; }
    public int OpenersID { get; set; }
    public int Status { get; set; }
    public int Editor { get; set; }
    public int Approver { get; set; }
    public int UpdateUserID { get; set; }
    public DateTime ModifiedDate { get; set; }
    public DateTime CreationDate { get; set; }
    public Boolean PostedToProduction { get; set; }
}