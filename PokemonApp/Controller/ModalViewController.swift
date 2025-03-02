//
//  ModalViewController.swift
//  PokemonApp
//
//  Created by CARLO GARCIA on 01/03/25.
//

import UIKit

class ModalViewController: UIViewController {
    var pImage: String?
    var pName: String?
    var pMove: String?
    var pSkill: String?
    var pSpecial: String?

    // Conecta cada campo en la vista
    @IBOutlet weak var imgPokemon: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblMove: UILabel!
    @IBOutlet weak var lblSkill: UILabel!
    @IBOutlet weak var imgSpecial: UIImageView!
    
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Imagen pokémon
        if let pImageStr = pImage {
            imgPokemon.image = UIImage(named: pImageStr)
        }
        
        // Nombre, movimiento y habilidad
        lblName.text = pName
        lblMove.text = pMove
        lblSkill.text = pSkill
        
        // Categoría especial
        if let pSpecialStr = pSpecial {
            if !pSpecialStr.isEmpty {
                imgSpecial.image = UIImage(named: pSpecialStr)
            }
        }
    }
}
