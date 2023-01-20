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
        let welcomeText = "IOS Dummy App"
        var charIndex = 0.0
        for letter in welcomeText {
                        
                        //Adding a timer to append each letter after time interval which is incremented after each time the loop iterates
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
              
                self.welcomeLbl.text?.append(letter)
            }
                        //CharIndex is incremented after every iteration so that the letters dont' just appear altogether, which would happen otherwise because the timers are set almost immediately and they start together.
            charIndex += 1
        }
        
    }
    

    

}
