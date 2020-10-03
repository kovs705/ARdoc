//
//  Persistence.swift
//  ARdoc
//
//  Created by Kovs on 28.09.2020.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ARdoc")
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Yo, unresolved error \(error)")
            }
        }
        return container
    }()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        // MARK: - Creating...
        for _ in 0..<10 {
            let newItem = Document(context: viewContext)
            newItem.id = UUID()
            newItem.name = "Test"
            newItem.type = "Personal"
        }
        
        // MARK: - Saving...
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
        return result
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "ARdoc")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
