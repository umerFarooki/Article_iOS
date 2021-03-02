//
//  RestClient.swift
//  ArticleBlog
//
//  Created by Umer Farooq on 3/1/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import Foundation
import Alamofire

//MARK: - Properties
// set base service properties based on build environment
#if DEBUG
private let httpProtocol        = "http://"
private let hostName            = "api.nytimes.com/"
#else
private let httpProtocol        = "http://"
private let hostName            = "api.nytimes.com/"
#endif

private let serviceDirectory1         = "svc/"
private let serviceDirectory2         = "svc/"
private let apiKey = "sV04leG467xE60LtpWUC6Ie7pMjPPQaw"


class Connectivity {
    // check for network connectivity using Alamofire
    class var isConnectedToInternet:Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}

struct ArticleScheme {
    let baseURL : String
    var header : HTTPHeaders
}

// make it easy to handle different REST service configuration
enum ArticleServiceScheme {
    
    case articleSearch
    case articleReviews
    
    func getRequestProperties()-> ArticleScheme{
        switch self {
        case .articleSearch:
            
            return ArticleScheme(baseURL: httpProtocol + hostName + serviceDirectory1 ,
                                  header: [HTTPHeader(name: "Content-Type", value: "application/json")])
        case .articleReviews:
            return ArticleScheme(baseURL: httpProtocol + hostName + serviceDirectory2 ,
                                  header: [HTTPHeader(name: "Content-Type", value: "application/json")])
            
        }
    }
}

//MARK: - Struct to create an error message object
struct ErrorMessage: Decodable {
    var enMessage: String?
    var arMessage: String?
    
    private enum CodingKeys: String, CodingKey {
        case enMessage = "ENErrorMessage"
        case arMessage = "ARErrorMessage"
    }
}

class RestClient{
    
    static let sessionMananger: Alamofire.Session = {
        let configuration = URLSessionConfiguration.default
        /* This property determines the maximum number of simultaneous connections made to each host by tasks within sessions based on this configuration.The default value is 6 in macOS, or 4 in iOS.
         Additionally, depending on your connection to the Internet, a session may use a lower limit than the one you specify. */
        configuration.httpMaximumConnectionsPerHost = 10
        // The default value is 60. Some of the Kahraamaa services are slow, so better to keep it as default.
        configuration.timeoutIntervalForRequest = 60
        //configuration.timeoutIntervalForResource = 60  // The default value is 7 days. Keep it as default
        return Alamofire.Session(configuration: configuration)
    }()

    

        //MARK: - get request for REST services
        static func getRequestForJSON < T :Decodable  > ( apiKey : String,
                                                          overrideServiceURL : String? = nil,
                                                          serviceScheme : ArticleServiceScheme,
                                                          kahramaaResponseModel : T.Type,
                                                          debugSampleJson : Data? = nil,
                                                          loaderEnabled : Bool = true,
                                                          completion:  @escaping (_ success:Bool, _ dataResponse: T?, _ errorMessage: String) -> () ) {

            
            // check for a network connection
            if (Connectivity.isConnectedToInternet == false && debugSampleJson == nil){
                debugPrint("No internet connection, aborting!")
                DispatchQueue.main.async {
                   completion( false, nil, "No internet connection, aborting!")
                }
                return
            }
            
            // create a service call configuration based on run environment
            var serviceURL = ""
            if overrideServiceURL != nil {
                serviceURL = overrideServiceURL!
            } else{
                serviceURL = serviceScheme.getRequestProperties().baseURL + apiKey
            }
            
            let serviceHeader = serviceScheme.getRequestProperties().header
            
            // print out the parameters for debugging purpose
            debugPrint("url              : '\(serviceURL)'")
            debugPrint("header           : '\(serviceHeader)'")
            
            // pass in a sample json to parse in case need to work without a service call
            if debugSampleJson != nil {
                let decoder = JSONDecoder()
                var jsonObject  : T? = nil
                var errorObject : ErrorMessage? = nil
                
                do {
                    // decode json
                    jsonObject  = try decoder.decode(T.self, from: debugSampleJson!)
                    
                    do {
                        // decode json
                        errorObject = try decoder.decode(ErrorMessage.self, from: debugSampleJson!)
                        
                        // decode Kahramaa server error message
                        let errorString = errorObject?.enMessage
                        let errorMessage = errorString ?? "no message"
                        
                        DispatchQueue.main.async {
                            completion(true, jsonObject, errorMessage)
                        }
                        
                    }catch{
                        DispatchQueue.main.async {
                            completion(true, jsonObject, "no message")
                        }
                    }
                    
                } catch {
                    // get detailed error message for a failed json parsing
                    debugPrint("status           : parsing failed -\(error)")
                    DispatchQueue.main.async {
                        completion(false, nil, "no message")
                    }
                }
                debugPrint("##### GET Request End #####\n")
                return
            }
            
            // show loading view
            if loaderEnabled {
                DispatchQueue.main.async {
                }
            }
            
            sessionMananger.request(serviceURL, method: .get, parameters: nil, encoding: JSONEncoding.prettyPrinted, headers: serviceHeader)
                .responseJSON(queue: DispatchQueue.global(qos: .utility)) { response in
                    
                    // hide loading view
                    if loaderEnabled{
                        DispatchQueue.main.async {
                        }
                    }
                    
                    if response.error == nil {
                        debugPrint("connection       : success")
                        
                        guard let jsonData = response.data else{
                            // data is no more null according to latest Alamofire update but need to be here to shut up swift compiler
                            DispatchQueue.main.async {
                                completion(false, nil, "no message")
                            }
                            return
                        }
                        
                        
                        let decoder = JSONDecoder()
                        var jsonObject  : T? = nil
                        
                        do {
                            // decode json
                            jsonObject  = try decoder.decode(T.self, from: jsonData)
                            
                            DispatchQueue.main.async {
                                completion(true, jsonObject, "Data Retrived Successfully")
                            }
                            
                        } catch {
                            // get detailed error message for a failed json parsing
                            debugPrint("status           : parsing failed -\(error)")
                            debugPrint("error            : \(response.error.debugDescription)")
                            
                            DispatchQueue.main.async {
                                completion(false, nil, "no message")
                            }
                        }
                        
                    }else{
                        debugPrint("status           : communication failed")
                        debugPrint("error            : \(response.error.debugDescription)")

                        DispatchQueue.main.async {
                           completion(false, nil, "no message")
                        }
                    }
                    
                    debugPrint("##### GET Request End #####\n")
            }
        }
}

