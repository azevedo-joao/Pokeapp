//
//  DetailView.swift
//  Pokeapp
//
//  Created by João Azevedo on 26.03.23.
//

import SwiftUI

struct DetailView: View {
    let id: Int
    let pokemonName: String
    let imageURL: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: imageURL), scale: 0.5)
            
            HStack {
                Text("Dex Nr. \(id)")
                Text(pokemonName)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(id: 1, pokemonName: "Bulbasaur", imageURL: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png")
    }
}
