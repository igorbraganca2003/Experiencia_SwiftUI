//
//  card3.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import Foundation
import SwiftUI

struct CardThree: View {
    
    var body: some View {
        NavigationView {
            VStack{
                Text("hello world3")
                Image(systemName: "highlighter")
            }
        }
    }
}

struct CardThree_Previews: PreviewProvider {
    static var previews: some View {
        CardThree().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria
