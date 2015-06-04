using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StateEntry
/// </summary>
public class StateEntry : IComparable<StateEntry>
{

    public string StateCode { get; set; }
    public string CountryCode { get; set; }
    public string StateName { get; set; }

    public StateEntry(string StateCode, string CountryCode, string StateName)
    {
        this.StateCode = StateCode;
        this.CountryCode = CountryCode;
        this.StateName = StateName;
    }

    // Implement the IComparable<T> interface. 
    public int CompareTo(StateEntry obj)
    {
        if (this.StateCode == obj.StateCode)
        {
            return this.CountryCode.CompareTo(obj.CountryCode);
        }
        else return this.StateCode.CompareTo(obj.StateCode);
    }
}