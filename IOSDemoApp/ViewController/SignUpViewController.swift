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
        print("Enter Full Name")
            return
        }
        guard passwordTF.text != "" else {
        print("Enter password")
            return
        }
        guard confirmPasswordTF.text != "" else {
        print("Enter confirm passwordTF")
            return
        }
        guard passwordTF.text == confirmPasswordTF.text else {
        print("Password do not match confirm password")
            return
        }
        
        let loginDataDict:[String:String?] = ["fullname":nameTF.text,"id":idTF.text,"password":passwordTF.text ]
        DatabaseHelper.sharedInstance.saveLoginData(obj: loginDataDict)
        
        performSegue(withIdentifier: k.Segue.loginVCSegue, sender: self)
    }
    
}
