//
//  Database.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 17/01/23.
//

import Foundation
import UIKit
import CoreData

class DatabaseHelper{
    
    static let sharedInstance = DatabaseHelper()
    
     let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext


     func saveLoginData(obj:[String:String?]){
        let loginData = NSEntityDescription.insertNewObject(forEntityName: "LoginData", into: context) as! LoginData
        loginData.fullname = obj["fullname"] as? String
        loginData.id = obj["id"] as? String
        loginData.password = obj["password"] as? String
        do{
            try context.save()
            print("Data is saved")
        }catch{
            print("Data not saved")
        }
    }

     func getLoginData()-> [LoginData]{
        let loginDataArr = [LoginData]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "LoginData")
        do{
            try context.save()
            print("Data is saved")
        }catch{
            print("Data not saved")
        }
        return loginDataArr
    }
    
    

}



