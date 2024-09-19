//
//  DexViewModel.swift
//  Pokeapp
//
//  Created by João Azevedo on 19.09.24.
//

import SwiftUI

@MainActor final class DexViewModel: ObservableObject {
	
	@Published var entries: [Entry] = []
	@Published var isShowingDetail = false
	@Published var selectedEntry: Entry?
	
	func getPokemonList() {
		Task { entries = try await NetworkManager.shared.getPokemonList() }
	}
}
