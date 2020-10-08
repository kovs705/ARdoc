//
//  AddDocument.swift
//  ARdoc
//
//  Created by Kovs on 04.10.2020.
//

import SwiftUI

extension Color {
    static let cPurple = Color("cPurple")
}

struct AddDocument: View {
    
    @State var docs: [Document] = []
    //@Environment(\.managedObjectContext) var moc
    
    @State private var textName: String = ""
    @State private var selectedType = 0
        
        var body: some View {
            ZStack {
                Color.cPurple
                VStack {
                    Text("Creating a document...")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                    
                    Group {
                        // Name placeholder:
                        TextField("Name", text: $textName)
                            .padding(13)
                            .font(Font.system(size: 16, weight: .black, design: .rounded))
                            .background(RoundedRectangle(cornerRadius: 13))
                            .foregroundColor(.white)
                        
                        // Type picker:
                        
                    }
                    .padding()
                    Spacer()
                }
            }
            .ignoresSafeArea()
    }
}

struct AddDocument_Previews: PreviewProvider {
    static var previews: some View {
        AddDocument().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
