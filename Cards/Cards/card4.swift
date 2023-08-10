//
//  card4.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import Foundation
import SwiftUI

struct CardFour: View {
    
    var body: some View {
        NavigationView {
            VStack{
                Text("hello world 4")
                Image(systemName: "paperplane")
            }
        }
    }
}

struct CardFour_Previews: PreviewProvider {
    static var previews: some View {
        CardFour().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria
