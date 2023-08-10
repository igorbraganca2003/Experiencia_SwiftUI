//
//  card5.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import SwiftUI
import Foundation

struct CardFive: View {
    
    var body: some View {
        NavigationView {
            VStack{
                Text("hello world 5")
                Image(systemName: "doc.on.doc.fill")
            }
        }
    }
}

struct CardFive_Previews: PreviewProvider {
    static var previews: some View {
        CardFive().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria
