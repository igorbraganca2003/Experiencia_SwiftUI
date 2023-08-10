//
//  card2.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import Foundation
import SwiftUI

struct CardTwo: View {
    @State private var reviewOn = false
    
    var body: some View {
        HStack(alignment: .top){
            VStack{
                Image("icone")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(3)
            }
            VStack(alignment: .leading){
                HStack{
                    Text("Auctus")
                        .font(.system(size: 27, weight: .medium))
                    if reviewOn {
                        Text("Reiviewed")
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color .blue)
                            .cornerRadius(12)
                            .font(.system(size: 8, weight: .black))
                            .padding(.leading, 5)
                    }
                }
                    .padding(.bottom, 0)
                Text("Real Estate")
                    .font(.system(size: 17, weight: .light))
                    .foregroundColor(.gray)
                HStack{
                    Text("$2,000,000 / $30,000,000")
                        .font(.system(size: 15, weight: .regular))
                    Spacer()
                    Text("23%")
                        .font(.system(size: 15, weight: .regular))
                }.padding(.top, 1)
                HStack{
                    Text("Sponsored")
                        .foregroundColor(.purple)
                        .font(.system(size: 15, weight: .regular))
                    Spacer()
                    Text("4d left")
                        .font(.system(size: 15, weight: .regular))
                }.padding(.top, 1)
            }.padding(.leading, 10)
        }.frame(width: 320, height: 130)
            .padding()
            .background(
                Color.white.shadow(.drop(radius: 3)))
            .gesture(
            TapGesture()
                .onEnded{ reviewOn.toggle()})
    }
}

struct CardTwo_Previews: PreviewProvider {
    static var previews: some View {
        CardTwo().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria
