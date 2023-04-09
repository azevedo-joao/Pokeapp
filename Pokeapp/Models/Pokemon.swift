//
//  Pokemon.swift
//  Pokeapp
//
//  Created by João Azevedo on 08.04.23.
//

import Foundation
import UIKit

struct Pokemon {
    
    let id: Int
    let name: String
    let type: String
    let sprite: String
    let color: UIColor
    
    init(id: Int, name: String, type: String, sprite: String) {
        
        self.id = id
        self.name = name
        self.type = type
        self.sprite = sprite
        self.color = UIColor(.white)
    }
}
