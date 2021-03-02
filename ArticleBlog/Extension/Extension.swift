//
//  Extension.swift
//  ArticleBlog
//
//  Created by Umer Farooq on 3/2/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func setNavigationBarStyle(){
        self.navigationController?.isNavigationBarHidden = false;
        self.navigationController?.navigationBar.barTintColor = UIColor(hex:"#66E5C2")
        self.navigationController?.navigationBar.tintColor    = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
    }
}

extension UIColor {
    convenience init(hex: String) {
        
        let hexValue = UInt(String( hex.suffix(6) ), radix: 16)!
        
        self.init(
            red: CGFloat((hexValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hexValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hexValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

extension UIView {
    
    func addRoundedCorner(_ radious : CGFloat){
        self.layer.masksToBounds = true
        self.layer.cornerRadius  = radious
    }
    
}
