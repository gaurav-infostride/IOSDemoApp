//
//  SignUpViewController.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import UIKit

class SignUpViewController: UIViewController {

    ///IB Outlets
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    ///ViewDidLoad Method of View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    ///IB Actios
    @IBAction func onSignUp(_ sender: Any) {
        ///Guarding Name Textfield aginst empty string value
        guard nameTF.text != "" else {
            showAlert(message: "Enter Full Name")
            return
        }
        
        ///Guarding Password Textfield aginst empty string value
        guard passwordTF.text != "" else {
            showAlert(message: "Enter password")
            return
        }
        
        ///Guarding ConfirmPassword Textfield aginst empty string value
        guard confirmPasswordTF.text != "" else {
            showAlert(message: "Enter confirm password")
            return
        }
        
        ///Guarding Password Textfield  text is egual to ConfirmPassword Textfield text
        guard passwordTF.text == confirmPasswordTF.text else {
            showAlert(message: "Password do not match with confirm password")
            return
        }
        

        ///creating a constant Dictionary for saving data in core database
        let loginDataDict:[String:String?] = ["fullname":nameTF.text,"id":idTF.text,"password":passwordTF.text ]
        ///saving user data in core datababse using saveLoginData function by basing above dictionary in paraeter
        DatabaseHelper.sharedInstance.saveLoginData(obj: loginDataDict)
        
        ///performSegue on main thread DispatchQueue.main.async method UI Work should always be done on main threads only
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: k.Segue.loginVCSegue, sender: self)
        }
        
    }
    
}
