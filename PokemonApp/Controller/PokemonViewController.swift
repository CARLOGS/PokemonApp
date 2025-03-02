//
//  ViewController.swift
//  PokemonApp
//
//  Created by CARLO GARCIA on 01/03/25.
//

import UIKit

// Se establece como variable global para tener acceso desde el extension
private let dataManager = PokemonDataManager()

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var pokemonTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        pokemonTable.dataSource = self
        pokemonTable.delegate = self
        
        dataManager.fetch()
        print(dataManager.count())
    }
}

extension PokemonViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count()
    }
    
    // Llena los datos asociadas a cada Pokémon
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        
        cell.pokemonImage.image = UIImage(named: pokemon!.image)
        cell.pokemonName.text = pokemon!.name
        cell.pokemonMoves.text = pokemon!.moves
        cell.pokemonSkill.text = pokemon!.skill
        cell.pokemonSpecial.image = pokemon!.special.isEmpty ? nil : UIImage(named: pokemon!.special)

        return cell
    }
    
    // Muestra un título
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokémon List"
    }
    
    // Detecta el click sobre la celda y lanza la escena modal
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("seccion: \(indexPath.section) indexPath.row: \(indexPath.row)")
        
        performSegue(withIdentifier: "pokemonSegue", sender: self)
    }
    
    // Sobre carga el método prepare para el envío de los datos
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // identifica el sugue e intercepta el registro seleccionado
        if segue.identifier == "pokemonSegue", // Identificador del segue
           let destinoVC = segue.destination as? ModalViewController,
           let indexPath = pokemonTable.indexPathForSelectedRow { // Obtener la celda seleccionada
                destinoVC.pImage = dataManager.getPokemon(at: indexPath.row)?.image // Pasar el dato
                destinoVC.pName = dataManager.getPokemon(at: indexPath.row)?.name // Pasar el dato
                destinoVC.pMove = dataManager.getPokemon(at: indexPath.row)?.moves // Pasar el dato
                destinoVC.pSkill = dataManager.getPokemon(at: indexPath.row)?.skill // Pasar el dato
                destinoVC.pSpecial = dataManager.getPokemon(at: indexPath.row)?.special // Pasar el dato
            }
    }
}
