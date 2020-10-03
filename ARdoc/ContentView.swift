//
//  ContentView.swift
//  ARdoc
//
//  Created by Kovs on 28.09.2020.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    let grid = [
        GridItem(.adaptive(minimum: 0))
    ]
    //var document: Document
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: grid, spacing: 20) {
                // ForEach thing
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
