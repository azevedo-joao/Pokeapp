//
//  DexView.swift
//  Pokeapp
//
//  Created by João Azevedo on 26.03.23.
//

import SwiftUI

struct DexView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            
            List(networkManager.getSortedEntries()) { entry in
                
                let pokemon = Pokemon(id: entry.id,
                                      name: entry.title,
                                      type: entry.types[0].type.name,
                                      sprite: entry.sprites.frontDefault)
                
                NavigationLink(destination: DetailView(pokemon: pokemon)) {
                    
                    HStack {
                        Text(String(entry.id))
                            .padding(.trailing)
                        Text(entry.title)
                    }
                }
            }
            .navigationTitle("Pokédex")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}


struct DexView_Previews: PreviewProvider {
    static var previews: some View {
        DexView()
    }
}
