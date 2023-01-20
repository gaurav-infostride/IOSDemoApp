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
    ///Variable
    static let sharedInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    
    ///function to save data in core database
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
    ///function to get data from core database
    func getLoginData(username: String, password: String)-> LoginData?{
         let username = username
         let usernamePredicate = NSPredicate(format: "id = %@", username)
         let usernameFetchRequest = NSFetchRequest<NSManagedObject>(entityName: "LoginData")
        usernameFetchRequest.predicate = usernamePredicate
        do{
            let fetchedResults = try context.fetch(usernameFetchRequest)
            print("Fetch results")
            if let task = fetchedResults.first as? LoginData {
                if task.password == password {
                    return task
                } else {
                    return nil
                }
            } else {
                print("No data found")
            }
            //  try context.save()
        }catch let err{
            print("Error in updating",err)
        }
        return nil
    }
}



