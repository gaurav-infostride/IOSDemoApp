//
//  SignUpViewController.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    @IBAction func onSignUp(_ sender: Any) {
        guard nameTF.text != "" else {
            showAlert(message: Helper.kValidationMessage.enterName)
            return
        }
        guard passwordTF.text != "" else {
            showAlert(message: Helper.kValidationMessage.enterPassword)
            return
        }
        guard confirmPasswordTF.text != "" else {
            showAlert(message: Helper.kValidationMessage.enterConfirmPassword)
            return
        }
        guard passwordTF.text == confirmPasswordTF.text else {
            showAlert(message: Helper.kValidationMessage.PasswordNotMatched)
            return
        }
        
        let loginDataDict:[String:String?] = [Helper.CoreDataAttributes.fullName:nameTF.text,Helper.CoreDataAttributes.id:idTF.text,Helper.CoreDataAttributes.password:passwordTF.text ]
        DatabaseHelper.sharedInstance.saveLoginData(obj: loginDataDict)
        
        performSegue(withIdentifier: Helper.Segue.loginVCSegue, sender: self)
    }
    
}
