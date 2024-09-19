//
//  NetworkManager.swift
//  Pokeapp
//
//  Created by João Azevedo on 19.09.24.
//

import UIKit

final class NetworkManager {
	
	static let shared = NetworkManager()
	private let baseURL = "https://pokeapi.co/api/v2/pokemon/"
	private var entries: [Entry] = []
	
	private init() {}
	
	func getPokemonList() async throws -> [Entry] {
		
		for id in 1...151 {
			
			guard let pokemonURL = URL(string: baseURL + "\(id)/") else {
				throw PokeError.invalidURL
			}
			
			let (data, _) = try await URLSession.shared.data(from: pokemonURL)
			
			do {
				let decoder = JSONDecoder()
				let entry = try decoder.decode(Entry.self, from: data)
				self.entries.append(entry)
			} catch {
				throw PokeError.invalidURL
			}
		}
		
		return entries.sorted(by: { $0.id < $1.id })
	}
}

enum PokeError: Error {
	case invalidURL
}
