//
//  List_02.swift
//  List_Grid
//
//  Created by Igor Bragança Toledo on 09/08/23.
//

import Foundation
import SwiftUI

private struct SneakersInfo: Identifiable {
    let name: String
    let pic: String
    let date: String
    let size: String
    let condition: String
    var id: String { name }
}

private let sneakersInfo: [SneakersInfo] = [
    SneakersInfo(name: "Air Jordan 12", pic: "sneaker_1", date: "12/12/23", size: "10", condition: "Ds"),
    SneakersInfo(name: "Downshifter 10", pic: "sneaker_2", date: "25/05/23", size: "12", condition: "Ds"),
    SneakersInfo(name: "Dunks", pic: "sneaker_3", date: "03/04/23", size: "8", condition: "Ds"),
    SneakersInfo(name: "Air force 7", pic: "sneaker_4", date: "18/07/23", size: "13", condition: "Ds"),
    SneakersInfo(name: "Air Jordam 5", pic: "sneaker_5", date: "01/11/23", size: "11", condition: "Ds"),
    SneakersInfo(name: "Black Plus", pic: "sneaker_6", date: "14/02/23", size: "9", condition: "Ds"),
]

let columns = [GridItem(.flexible()), GridItem(.flexible())]

struct List_Two: View {
    var body: some View {
        NavigationView{
            
            VStack{
                Divider()
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("ITEMS")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.gray)
                        Text("24")
                            .font(.system(size: 20, weight: .black))
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("TOTAL SPENT")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.gray)
                        Text("$3.203")
                            .font(.system(size: 20, weight: .black))
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("EST. VALUE")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.gray)
                        HStack{
                            Image(systemName: "square.and.arrow.up.fill")
                                .resizable()
                                .frame(width: 12, height: 15)
                                .foregroundColor(.green)
                            Text("$7.859")
                                .font(.system(size: 20, weight: .black))
                        }
                    }
                }.padding(.horizontal, 20)
                    .padding(.top, 10)
                
                //Grid começa aqui
                ScrollView{
                    LazyVGrid(columns: columns) {
                        ForEach(sneakersInfo) { sneakersInfo in
                            Image(sneakersInfo.pic)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 170, height: 180)
                                .cornerRadius(10)
                        }
                    }.padding(.horizontal, 20)
                }
            }
            
            .navigationTitle("My Collection")
            .toolbar{
                ToolbarItem{
                    Image(systemName: "plus")
                        .foregroundColor(.purple)
                }
            }
        }.accentColor(.purple)
    }
}

struct List_Two_Previews: PreviewProvider {
    static var previews: some View {
        List_Two().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
