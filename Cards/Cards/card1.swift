//
//  card1.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import Foundation
import SwiftUI

struct CardOne: View {
    
    var body: some View {
        ZStack(alignment: .bottom){
            Rectangle()
                .shadow(color: .gray, radius: 5, x: 1, y: 1)
//                .frame(width: 350, height: 600)
                .foregroundColor(Color(red: 253/255, green: 95/255, blue: 108/255))
            VStack(){
                Image("monkey")
                    .resizable()
                    .frame(width: 250, height: 250)
                ZStack{
                    Rectangle()
                        .frame(width: 350, height: 250)
                        .foregroundColor(.white)
                    VStack{
                        Text("MONKEY")
                            .font(.system(size: 30, weight: .heavy, design: .default))
                        Text("Lovely animals always make us happy")
                            .frame(width: 200)
                            .multilineTextAlignment(.center)
                            .padding(.top, 1)
                    }
                }
            }
        }.frame(width: 350, height: 600)
    }
}

struct CardOne_Previews: PreviewProvider {
    static var previews: some View {
        CardOne().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria
