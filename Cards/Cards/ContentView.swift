//
//  ContentView.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    CardOne()
                        .padding(.bottom, 100)
                    CardTwo()
                        .padding(.bottom, 100)
                    CardThree()
                        .padding(.bottom, 100)
                    CardFour()
                        .padding(.bottom, 100)
                    CardSix()
                }
            }.navigationTitle("Cards")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Soli Deo Gloria

