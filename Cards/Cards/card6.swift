//
//  card6.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import Foundation
import SwiftUI

//struct RoundedCorners: Shape {
//    var radius: CGFloat
//    var corners: UIRectCorner
//
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(
//            roundedRect: rect,
//            byRoundingCorners: corners,
//            cornerRadii: CGSize(width: radius, height: radius)
//        )
//        return Path(path.cgPath)
//    }
//}

struct CardSix: View {
    
    var body: some View {
        NavigationView {
            VStack{
                VStack{
                    
                }.frame(width: 100, height: 100)
                    .background(Color .red)
                    .cornerRadius(10)
                
            }.frame(width: 300, height: 400)
            .background(Color .green)
            .cornerRadius(20)
        }
    }
}

struct CardSix_Previews: PreviewProvider {
    static var previews: some View {
        CardSix().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria
