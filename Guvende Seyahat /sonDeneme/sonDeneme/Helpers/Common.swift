//
//  Common.swift
//  sonDeneme
//
//  Created by Yusuf Muhammet Yıldırım on 20/01/2022.
//

import Foundation
import UIKit




class Common: NSObject {
    
    
    class func showAlert(title : String, message: String, vc :UIViewController ) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        vc.present(alert, animated: true, completion: nil)
    
    }
    
    
}

