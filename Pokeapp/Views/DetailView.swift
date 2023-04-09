//
//  DetailView.swift
//  Pokeapp
//
//  Created by João Azevedo on 26.03.23.
//

import SwiftUI

struct DetailView: View {
    
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: pokemon.sprite), scale: 0.5)
            
            VStack {
                HStack {
                    Text("Dex Nr.: \(pokemon.id) –")
                    Text(pokemon.name)
                }
                .padding(.bottom)
                
                Text("Type: \(pokemon.type)")
            }
        }
        .padding(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let pokemon = Pokemon(id: 1, name: "Bulbasaur", type: "grass",
                              sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png")
        DetailView(pokemon: pokemon)
    }
}
