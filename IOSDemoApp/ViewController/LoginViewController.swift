//
//  LoginViewController.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import UIKit

class LoginViewController: UIViewController {
    ///Variable
    private let databaseObj = DatabaseHelper.sharedInstance
    
    ///IB Outlets
    @IBOutlet weak var loginIdTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    ///ViewDidLoad Method of View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    ///IB Actios
    @IBAction func onLogin(_ sender: Any) {
        ///getting user data  from core database
        if let user = databaseObj.getLoginData(username: loginIdTF.text!, password: passwordTF.text!) {
           print("Logged in successfully.")
        } else {
            ///showing allert if user data not founf or not match
            showAlert(message: "User not found!")
        }
    }
    
}
