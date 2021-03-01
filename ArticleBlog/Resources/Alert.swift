//
//  Alert.swift
//  ArticleBlog
//
//  Created by Umer Farooq on 3/2/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import Foundation
import UIKit
    
class Alert{
    
    public enum AlertAction {
        case primary
        case cancel
        case destructive
    }

    /* Alert with no executable actions */
    class func showAlert(_ viewController : UIViewController, message:String){
        
        guard viewController.viewIfLoaded?.window != nil else { return } // If viewController is not visible, don't show
        
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        
        let okAction        = UIAlertAction(title: "OK", style: .default)
        { (action) in
            //Ignored..just a popup
        }
        
        alertController.addAction(okAction)
        
        viewController.present(alertController, animated: true)
    }
    
    /* Alert with cancel action */
    class func showAlert(_ viewController : UIViewController, message:String, defaultButtonTitle: String,
                         cancelable: Bool, cancelButtonTitle: String = "Cancel", completionHandler: @escaping (AlertAction) -> () ){
        
        guard viewController.viewIfLoaded?.window != nil else { return } // If viewController is not visible, don't show
        
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        
        let defaultAction        = UIAlertAction(title: defaultButtonTitle, style: .default)
        { (action) in
            //perform action when user clicks ok
            completionHandler(.primary)
        }
        alertController.addAction(defaultAction)
        if cancelable {
            let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel)
            { (action) in
                //perform action when user clicks cancel
                completionHandler(.cancel)
            }
            alertController.addAction(cancelAction)
        }
        viewController.present(alertController, animated: true)
    }
}
