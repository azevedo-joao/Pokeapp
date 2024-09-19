//
//  DexView.swift
//  Pokeapp
//
//  Created by João Azevedo on 26.03.23.
//

import SwiftUI

struct DexView: View {
    
	@StateObject private var viewModel = DexViewModel()
    
    var body: some View {
        
		NavigationStack {
            
			List(viewModel.entries) { entry in
                
				NavigationLink(destination: DetailView(entry: entry)) {
                    
					DexViewCell(entry: entry)
                }
            }
            .navigationTitle("Pokédex")
        }
		.task {
			viewModel.getPokemonList()
		}
    }
    
}


struct DexView_Previews: PreviewProvider {
    static var previews: some View {
        DexView()
    }
}
