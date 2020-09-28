//
//  ContentView.swift
//  ARdoc
//
//  Created by Kovs on 28.09.2020.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    
    
    var body: some View {
        Text("Hello")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
