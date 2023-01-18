//
//  TaskData+CoreDataProperties.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 19/01/23.
//
//

import Foundation
import CoreData


extension TaskData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskData> {
        return NSFetchRequest<TaskData>(entityName: "TaskData")
    }

    @NSManaged public var taskTitle: String?
    @NSManaged public var taskDetails: String?
    @NSManaged public var createdAt: String?

}

extension TaskData : Identifiable {

}
