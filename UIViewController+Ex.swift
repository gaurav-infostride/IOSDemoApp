//
//  UIViewController+Ex.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import Foundation
import UIKit


///extension UIViewController to extend its thefunctionality
extension  UIViewController {

    func showAlert(title:String = k.appName, message:String?){
        let allertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Ok", style: .default) { (action) in
        }
        allertController.addAction(OKAction)
        present(allertController, animated: true)
    }
    

    
    func showActionAlert(title:String = k.appName, message:String?){
        let allertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Yes", style: .destructive) { (action) in
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in

        }
        allertController.addAction(cancelAction)
        allertController.addAction(OKAction)
        present(allertController, animated: true)
    }
    
    
}
