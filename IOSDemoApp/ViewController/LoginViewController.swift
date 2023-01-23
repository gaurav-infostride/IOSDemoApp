//
//  LoginViewController.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginIdTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let databaseObj = DatabaseHelper.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogin(_ sender: Any) {
        
        if let user = databaseObj.getLoginData(username: loginIdTF.text!, password: passwordTF.text!) {
            
//            showAlert(message: "Logged in successfully.")
            
        } else {
            showAlert(message: "User not found!")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
