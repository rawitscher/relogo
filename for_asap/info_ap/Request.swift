//
//  Request.swift

import Foundation
class Request : NSObject
{
    
    
   class func getPostParams() -> String
    {
 
        return ""
    }
    
class func fetchPostUrl(url:NSURL, params:[String:AnyObject]?, onSuccess:((data: AnyObject) -> Void)?, onFail:((message:String) -> Void)?){
    
    let request = NSMutableURLRequest(URL: url)
    request.HTTPMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    if(params != nil){
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params!, options: NSJSONWritingOptions.PrettyPrinted, error: nil)
    }
    
    let queue = NSOperationQueue()
    
    NSURLConnection.sendAsynchronousRequest(request, queue: queue) { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
        if error == nil{
            var err:NSError?
            if data != nil{
                if var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as? NSDictionary {
                    onSuccess!(data: jsonResult)
                }
                else
                {
                    onFail!(message: "error on parsing")
                }
            }
            else
            {
                onFail!(message: "No data received")
            }
        }
        else{
            onFail!(message:error.description)
        }
    }
}
 
