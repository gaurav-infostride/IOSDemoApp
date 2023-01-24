//
//  UIViewController+Ex.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import Foundation
import UIKit

extension  UIViewController {
    func showAlert(title:String = Helper.welcomeMessage, message:String?){
        let allertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//
//        }
//        allertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: Helper.alertAction.ok, style: .default) { (action) in
            
        }
        allertController.addAction(OKAction)
        
        present(allertController, animated: true)
    }
    
    
    func showActionAlert(title:String = Helper.welcomeMessage, message:String?){
        let allertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: Helper.alertAction.Cancel, style: .cancel) { (action) in

        }
        allertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: Helper.alertAction.yes, style: .destructive) { (action) in
            
        }
        allertController.addAction(OKAction)
        
        present(allertController, animated: true)
    }
    
    
}
