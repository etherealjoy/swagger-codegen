//
// AnotherFakeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import PromiseKit



open class AnotherFakeAPI {
    /**
     To test special tags
     
     - parameter body: (body) client model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testSpecialTags(body: Client, completion: @escaping ((_ data: Client?,_ error: Error?) -> Void)) {
        testSpecialTagsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     To test special tags
     
     - parameter body: (body) client model 
     - returns: Promise<Client>
     */
    open class func testSpecialTags( body: Client) -> Promise<Client> {
        let deferred = Promise<Client>.pending()
        testSpecialTags(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     To test special tags
     - PATCH /another-fake/dummy
     - To test special tags
     - examples: [{contentType=application/json, example={
  "client" : "client"
}}]
     
     - parameter body: (body) client model 

     - returns: RequestBuilder<Client> 
     */
    open class func testSpecialTagsWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/another-fake/dummy"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
