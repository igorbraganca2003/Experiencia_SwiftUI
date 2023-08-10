//
//  card6.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import Foundation
import SwiftUI

struct RoundedCorners: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct CardSix: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    VStack{
                        HStack{
                            Image(systemName: "square.grid.3x2.fill")
                        }
                    }
                        .frame(width: 230, height: 130)
                        .background(Color .red)
                        .cornerRadius(10)
                        .padding(.top, 50)
                        .padding(.bottom, 30)
                        .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 1)
                    
                    VStack{}
                        .frame(width: 300, height: 200)
                        .background(Color .white)
                    //                    .clipShape(RoundedCorners(radius: 10, corners: [.bottomLeft, .bottomRight]))
                }
                .frame(width: 300, height: 400)
                .background(Color .orange)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 15, x: -5, y: 5)
                
                Circle()
                    .frame(height: 60)
                    .foregroundColor(.orange)
                    .offset(x:0, y: 200)
            }
        }
    }
}

struct CardSix_Previews: PreviewProvider {
    static var previews: some View {
        CardSix().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria
