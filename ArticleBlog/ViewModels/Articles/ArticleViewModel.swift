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
        
        RestClient.getRequestForJSON(apiKey: mostReviewedArticlesRoute,
                                      serviceScheme: ArticleServiceScheme.articleSearch,
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
