using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Web;

[ServiceContract(Namespace = "http://www.geniecompany.com/")]
public class DealerLocatorRestService
{
    [OperationContract]
    [WebInvoke(Method = "GET",
        ResponseFormat = WebMessageFormat.Json,
        BodyStyle = WebMessageBodyStyle.Wrapped,
        UriTemplate = "json/{loc}")]
    DealerLocatorResponse locator(string loc)
    {

        DealerLocatorRequest dlRequest = new DealerLocatorRequest(loc);
        return dlRequest.locatorResponse;
    }
}
