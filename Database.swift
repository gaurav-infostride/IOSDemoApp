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
        let loginData = NSEntityDescription.insertNewObject(forEntityName: Helper.CoreDataEntity.loginData, into: context) as! LoginData
         loginData.fullname = obj[Helper.CoreDataAttributes.fullName] as? String
        loginData.id = obj[Helper.CoreDataAttributes.id] as? String
        loginData.password = obj[Helper.CoreDataAttributes.password] as? String
        do{
            try context.save()
            print(Helper.kSuccessMessage.kDataSaved)
        }catch{
            print(Helper.kFailureMessage.kDataNotSaved)
        }
    }

     func getLoginData()-> [LoginData]{
        let loginDataArr = [LoginData]()
         let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: Helper.CoreDataEntity.loginData)
        do{
            try context.save()
            print(Helper.kSuccessMessage.kDataSaved)
        }catch{
            print(Helper.kFailureMessage.kDataNotSaved)
        }
        return loginDataArr
    }
    
    

}



