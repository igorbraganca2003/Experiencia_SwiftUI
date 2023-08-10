//
//  List_02_info.swift
//  List_Grid
//
//  Created by Igor Bragança Toledo on 09/08/23.
//

import Foundation
import SwiftUI

struct List_Two_Two: View {
    var body: some View {
        Text("Olá")
    }
}
            
struct List_Two_Two_Previews: PreviewProvider {
    static var previews: some View {
        List_Two_Two().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
