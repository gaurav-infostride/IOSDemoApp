//
//  Helper.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import Foundation
struct k{
    static let appName = "IOS Demo App"
    static let taskDataEntityName = "TaskData"
    static let loginDataEntityName = "LoginData"
    
    struct message {
        static let enterFullName = "Enter Full Name"
        static let enterPassword = "Enter password"
        static let enterConfirmPassword = "Enter confirm password"
        static let passwordDoNotMatch = "Password do not match with confirm password"
//        static let enterFullName = "Enter Full Name"
//        static let enterFullName = "Enter Full Name"
//        static let enterFullName = "Enter Full Name"
    }
    
    
    struct Segue {
        static let loginVCSegue = "loginVCSegue"
    }
    
    ///constant cell names
    struct Cell{
        static let restaurantTableViewCell = "RestaurantTableViewCell"
    }
    
}
