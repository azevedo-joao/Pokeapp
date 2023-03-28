//
//  EntryData.swift
//  Pokeapp
//
//  Created by João Azevedo on 26.03.23.
//

import Foundation

struct Pokedex: Decodable {
    let entries: [Entry]
}

struct Entry: Decodable, Identifiable {
    let id: Int
    
    var title: String {
        return name
    }
    let name: String
    let sprites: Sprites
}

struct Sprites: Decodable {
    let front_default: String
}
