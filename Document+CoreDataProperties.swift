//
//  Document+CoreDataProperties.swift
//  ARdoc
//
//  Created by Kovs on 28.09.2020.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String
    
    @NSManaged public var type: String
    
    var docType: Type {
        set {
            type = newValue.rawValue
        }
        get {
            Type(rawValue: type) ?? .personal
        }
    }

}


enum Type: String {
    case personal = "Personal"
    case job = "Job"
    case other = "Other"
}

extension Document : Identifiable {
    
}
