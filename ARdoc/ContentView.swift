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
    @State var docs: [Document] = []
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: grid, spacing: 20) {
                ForEach(docs, id: \.self) { doc in
                    // create a rectangle body for every document in the grid:
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                        VStack {
                            Text(doc.name)
                                .bold()
                                .font(.headline)
                            Spacer()
                            Text(doc.type)
                                .font(.caption)
                        }
                        // end of VStack
                    }
                    .frame(width: 100, height: 200)
                    // End of ZStack
                }
            }
            // End of LazyVGrid
        }
        // End of ScrollView
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
