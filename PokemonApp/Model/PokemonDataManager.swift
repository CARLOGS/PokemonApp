//
//  PokemonDataManager.swift
//  PokemonApp
//
//  Created by CARLO GARCIA on 01/03/25.
//


import Foundation

class PokemonDataManager {
    private var pokemons: [Pokemon] = []
    
    //data source array :P
    private let pokemonsArray = [
        ["image":"0", "name": "Wartortle", "moves": "Absorb", "skill": "Adaptability", "special": "S0"],
        ["image":"1", "name": "Bulbasaur", "moves": "Accelerock", "skill": "Aerilate", "special": "S1"],
        ["image":"2", "name": "Blastoise", "moves": "Acid", "skill": "Aftermath", "special": "S0"],
        ["image":"3", "name":"Butterfree", "moves": "Acid Armor", "skill": "Air Lock", "special": "S2"],
        ["image":"4", "name":"Ivysaur", "moves": "Acid Downpour", "skill": "Analytic", "special": ""],
        ["image":"5", "name":"Jigglypuf", "moves": "Acid Spray", "skill": "Anger Point", "special": "S0"],
        ["image":"6", "name":"Charmander", "moves": "Acrobatics", "skill": "Anger Shell", "special": "S1"],
        ["image":"7", "name":"Meowth", "moves": "Acupressure", "skill": "Anticipation", "special": "S2"],
        ["image":"8", "name":"Alacazam", "moves": "Aerial Ace", "skill": "Arena Trap", "special": "S1"],
        ["image":"9", "name":"Pidgey", "moves": "Aeroblast", "skill": "Armor Tail", "special": "S0"],
        ["image":"10", "name":"Raichu", "moves": "After You", "skill": "Aroma Veil", "special": "S2"],
        ["image":"11", "name":"Rattata", "moves": "Agility", "skill": "As One", "special": "S2"],
        ["image":"12", "name":"Vaporeon", "moves": "Air Cutter", "skill": "Aura Break", "special": "S0"],
        ["image":"13", "name":"Jynx", "moves": "Air Slash", "skill": "Bad Dreams", "special": "S0"],
        ["image":"14", "name":"Venusaur", "moves": "All-Out Pummeling", "skill": "Ball Fetch", "special": ""],
        ["image":"15", "name":"Linea", "moves": "Ally Switch", "skill": "Alluring Voice", "special": "S0"],
        ["image":"16", "name":"Slowbro", "moves": "Amnesia", "skill": "Battery", "special": "S2"],
        ["image":"17", "name":"Dewgong", "moves": "Anchor Shot", "skill": "Battle Armor", "special": "S2"],
        ["image":"18", "name":"Spearow", "moves": "Ancient Power", "skill": "Battle Bond", "special": "S1"],
        ["image":"19", "name":"Wigglytuff", "moves": "Apple Acid", "skill": "Beads of Ruin", "special": "S0"],
        ["image":"20", "name":"Scyther", "moves": "Aqua Cutter", "skill": "Beast Boost", "special": "S0"],
        ["image":"21", "name":"Golduk", "moves": "Aqua Jet", "skill": "Berserk", "special": "S1"],
        ["image":"22", "name":"Lapras", "moves": "Aqua Ring", "skill": "Big Pecks", "special": "S1"],
        ["image":"23", "name":"Sandshrew", "moves": "Aqua Step", "skill": "Blaze", "special": "S2"]
    ]
    
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemons() -> [Pokemon] {
        return pokemons
    }
    
    func getPokemon(at index: Int) -> Pokemon? {
        
        // guard valida una condición inválida
        guard index >= 0 && index < pokemons.count else { return nil }
        
        return pokemons[index]
    }
    
    func count() -> Int {
        return pokemons.count
    }
}
