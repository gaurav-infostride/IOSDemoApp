//
//  LoginData+CoreDataProperties.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 16/01/23.
//
//

import Foundation
import CoreData

///Extension of Coredata NSManagable class of Entity LoginData created by followingb these steps go to plist entity (under plist tab)  > editor (on top menue) >  create NSManagedobject subclass
extension LoginData {

    ///func fetchRequest used to fetch data from core database
    @nonobjc public class func fetchRequest() -> NSFetchRequest<LoginData> {
        return NSFetchRequest<LoginData>(entityName: k.loginDataEntityName)
    }
    ///Variable
    @NSManaged public var fullname: String?
    @NSManaged public var id: String?
    @NSManaged public var password: String?

}

extension LoginData : Identifiable {

}
