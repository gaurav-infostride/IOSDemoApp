//
//  Helper.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//

import Foundation

struct Helper{
    static let appName = "IOSDemoApp"
    static let welcomeMessage = "IOS Dummy App"
    static let BaseUrl = "https://random-data-api.com/api"

    struct Segue {
        static let loginVCSegue = "loginVCSegue"
    }
    
    struct Cell{
        static let restaurantTableViewCell = "RestaurantTableViewCell"
    }
    struct kValidationMessage {
        static let enterName  = "Please enter Full Name"
        static let enterPassword  = "Please enter password"
        static let enterConfirmPassword  = "Please enter confirm password"
        static let PasswordNotMatched  = "Password did not match with confirm password"
    }
    struct CoreDataAttributes {
        static let fullName = "fullname"
        static let id = "id"
        static let password = "password"
    }
    struct CoreDataEntity {
        static let loginData = "LoginData"
    }
    struct kSuccessMessage{
        static let kDataSaved = "Data saved successfully"
    }
    struct kFailureMessage {
        static let kDataNotSaved = "Unable to save data"
    }
    struct alertAction {
        static let ok = "Ok"
        static let Cancel = "Cancel"
        static let yes = "Yes"
    }
    
}
