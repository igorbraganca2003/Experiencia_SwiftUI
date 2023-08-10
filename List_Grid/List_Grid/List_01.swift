//
//  List_01.swift
//  List_Grid
//
//  Created by Igor Bragança Toledo on 09/08/23.
//

import Foundation
import SwiftUI

private struct ChatList: Identifiable {
    let name: String
    let pic: String
    let message: String
    let date: String
    let unread: Bool
    var id: String { name }
}

private let chatList: [ChatList] = [
    ChatList(name: "Janet", pic: "profile_pic1", message: "Do you know where tin foils is at whole foods?", date: "3:14PM", unread: true),
    ChatList(name: "Diego", pic: "profile_pic2", message: "Sure thing man, come on over if you want to see the new designs.", date: "Tuesday", unread: true),
    ChatList(name: "Gloria", pic: "profile_pic3", message: "Call me later if you have the time!", date: "2:45PM", unread: false),
    ChatList(name: "Jake", pic: "profile_pic4", message: "What time is everyone playing Halo Infinite online tonight?", date: "8:35AM", unread: false),
    ChatList(name: "Ammy", pic: "profile_pic5", message: "Thanks for dropping off those cookies after Chrismas dinner. You're too kind!", date: "Yesterday", unread: true),
    ChatList(name: "Caleb", pic: "profile_pic6", message: "Nah, I'm still burnt out from my last freelance project. Trying to take it easy.", date: "10:49AM", unread: false)
]

struct List_One: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(chatList) { chatList in
                    HStack{
                        if chatList.unread {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 5, height: 5)
                        }
                        else {
                            Circle()
                                .foregroundColor(.clear)
                                .frame(width: 5)
                        }
                        Image(chatList.pic)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .cornerRadius(100)
                        VStack(alignment: .leading){
                            HStack{
                                Text(chatList.name)
                                    .font(.system(size: 16, weight: .semibold))
                                    .bold()
                                    .padding(.leading, 5)
                                    .padding(.top, 5)
                                Spacer()
                                Text(chatList.date)
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.gray)
                            }.padding(.bottom, 1)
                            Text(chatList.message)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.leading, 5)
                                .padding(.bottom, 5)
                        }
                    }.listRowBackground(chatList.unread ? Color.blue.opacity(0.05) : Color.white)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Messages")
            .padding(.top, 10)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Image("plus_green")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}

struct List_One_Previews: PreviewProvider {
    static var previews: some View {
        List_One().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
