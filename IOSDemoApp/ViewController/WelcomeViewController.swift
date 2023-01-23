//
//  WelcomeViewController.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 17/01/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLbl.text = ""
        let welcomeText = Helper.welcomeMessage
        var charIndex = 0.0
        for i in welcomeText{
            Timer.scheduledTimer(withTimeInterval: 1 * charIndex, repeats: false){(timer) in
//                self.welcomeLbl.text?.append(i)
                
            }
            charIndex = +1
            
        }
        
    }
    

    

}
