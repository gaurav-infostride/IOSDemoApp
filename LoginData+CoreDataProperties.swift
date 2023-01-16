//
//  LoginData+CoreDataProperties.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//
//

import Foundation
import CoreData


extension LoginData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LoginData> {
        return NSFetchRequest<LoginData>(entityName: "LoginData")
    }

    @NSManaged public var fullname: String?
    @NSManaged public var id: String?
    @NSManaged public var password: String?

}

extension LoginData : Identifiable {

}
