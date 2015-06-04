using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StateEntry
/// </summary>
public class ModelEntry : IComparable<ModelEntry>
{

    public int ID { get; set; }
    public string ModelNumber { get; set; }
    public string ModelDescription { get; set; }

    public ModelEntry(int ID, string ModelNumber, string ModelDescription)
    {
        this.ID = ID;
        this.ModelNumber = ModelNumber;
        this.ModelDescription = ModelDescription;
    }

    // Implement the IComparable<T> interface. 
    public int CompareTo(ModelEntry obj)
    {
        if (this.ModelDescription == obj.ModelDescription)
        {
            return this.ModelNumber.CompareTo(obj.ModelNumber);
        }
        else return this.ModelDescription.CompareTo(obj.ModelDescription);
    }
}