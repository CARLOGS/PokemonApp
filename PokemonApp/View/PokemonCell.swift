//
//  PokemonCell.swift
//  PokemonApp
//
//  Created by CARLO GARCIA on 01/03/25.
//

import UIKit

class PokemonCell: UITableViewCell {

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonMoves: UILabel!
    @IBOutlet weak var pokemonSkill: UILabel!
    @IBOutlet weak var pokemonSpecial: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
