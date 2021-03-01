//
//  ArticleViewModel.swift
//  ArticleBlog
//
//  Created by Umer Farooq on 3/1/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import Foundation

protocol ArticleViewModelDelegate:class {
    func showData()
    func showError(message:String)
}


class ArticleViewModel {
    
    weak var delegate: ArticleViewModelDelegate?
    
    var dataSource: SectionsDataResponseModel?
    
    func loadSections() {
        
        RestClient.getRequestForJSON(apiKey: "mostpopular/v2/mostviewed/all-sections/7.json?api-key=sV04leG467xE60LtpWUC6Ie7pMjPPQaw",
                                      serviceScheme: KahramaaServiceScheme.articleSearch,
                                      kahramaaResponseModel: SectionsDataResponseModel.self,
                                      //debugSampleJson :  CustomerLoginResponseModel.sample,
        loaderEnabled : true) { (success, json, message) in
            
            if success {
                guard let response = json else { return } // if success json shouldn't be null
                
                if response.status == "OK" {
                    self.dataSource = response
                    self.delegate?.showData()
                } else {
                    self.delegate?.showError(message: message)
                }
                
            } else {
                // ask to retry if network call failed for some reason
                 self.delegate?.showError(message: message)
            }
        }
    }
}
