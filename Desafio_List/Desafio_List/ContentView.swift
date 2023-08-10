//
//  ContentView.swift
//  Desafio_List
//
//  Created by Igor Bragança Toledo on 10/08/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    //Itens adicionados na lista pela sheet
    @State private var itens: String = ""
    
    @State var fruits: [String] = ["banana", "pear", "apple"]
    
    //Mantem a sheet abaixada
    @State private var showSheet = false
    
    //Armazena o que for digitado na barra de pesquisa
    @State var busca: String = ""
    
    // Função que deleta os itens da lista
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    //Função que move os objetos da lista
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    // Adiciona itens a lista
    func add(){
        fruits.append("grape")
    }
    
    var body: some View {
        NavigationView{
            VStack{
                if fruits.isEmpty {
                    Image("dcmdc")
                        .resizable()
                        .frame(width: 300, height: 220)
                        .padding(.bottom, 80)
                }else{
                    List{
                        ForEach(fruits, id: \.self) { fruits in
                            Text(fruits.capitalized)
                        }.onDelete(perform: {indexSet in
                            delete(indexSet: indexSet)
                        })
                        .onMove(perform: move)
                    }
                }
            }
            .navigationTitle("Lista de compras")
            .navigationBarItems(leading: EditButton())
            .toolbar{
                Button(action:{
                    showSheet = true
                }){
                    Image(systemName: "plus.circle")
                        .foregroundColor(.blue)
                }
            }
            //SheetView
            .sheet(isPresented: $showSheet, content: {
                Text("Olá, insira uma fruta na lista!")
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.bottom, 20)
                TextField("Insira uma fruta a lista", text: $itens)
                    .frame(width: 300, height: 40)
                    .padding(.leading, 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                
                HStack{
                    Button(action:{
                        showSheet = false })
                    { Text("Fechar")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.red)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.red, lineWidth: 2)
                            )}.padding(.trailing, 10)
                    
                    Button(action:{ fruits.append(itens)})
                    { Text("Adicionar")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.blue)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 2)
                            )}
                }.padding(10)
                
                .presentationDetents([.height(400)])
                
            })
        }
        .searchable(text:$busca)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
