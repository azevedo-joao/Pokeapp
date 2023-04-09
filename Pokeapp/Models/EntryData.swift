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
    let types: [Types]
}

struct Sprites: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
    
    let frontDefault: String
}

struct Types: Decodable {
    
    let type: Name
}

struct Name: Decodable {
    
    let name: String
}
