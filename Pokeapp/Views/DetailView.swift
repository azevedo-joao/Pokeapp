//
//  DetailView.swift
//  Pokeapp
//
//  Created by João Azevedo on 26.03.23.
//

import SwiftUI

struct DetailView: View {
    
    //let pokemon: Pokemon
	let entry: Entry
    
    var body: some View {
//        VStack {
//            AsyncImage(url: URL(string: pokemon.sprite), scale: 0.5)
//            
//            VStack {
//                HStack {
//                    Text("Dex Nr.: \(pokemon.id) –")
//					Text(pokemon.name.capitalized)
//                }
//                .padding(.bottom)
//                
//                Text("Type: \(pokemon.type)")
//            }
//        }
//        .padding(.all)
		
		VStack {
			AsyncImage(url: URL(string: entry.sprites.frontDefault), scale: 0.5)
			
			VStack {
				HStack {
					Text("Dex Nr.: \(entry.id)")
						.fontWeight(.bold)
					Text(entry.name.capitalized)
						.fontWeight(.bold)
				}
				.padding(.bottom)
				
				if entry.types.count > 1 {
					Text("Type: \(entry.types[0].type.name.capitalized), \(entry.types[1].type.name.capitalized)")
				} else {
					Text("Type: \(entry.types[0].type.name.capitalized)")
				}
			}
		}
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        
		DetailView(entry: MockEntry.sample)
    }
}
