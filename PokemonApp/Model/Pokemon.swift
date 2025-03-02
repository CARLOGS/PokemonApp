//
//  Pokemon.swift
//  PokemonApp
//
//  Created by CARLO GARCIA on 01/03/25.
//

import Foundation

struct Pokemon {
    let name: String
    let image: String
    let moves: String
    let skill: String
    let special: String
    
    init(dict: [String: String]) {
        // El ! forza el varlo aunque sea nulo sino usar ?? para definir un valor default
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.moves = dict["moves"]!
        self.skill = dict["skill"]!
        self.special = dict["special"]!
    }
}
