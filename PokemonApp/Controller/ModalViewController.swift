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
        if let pImageStr = pImage {
            imgPokemon.image = UIImage(named: pImageStr)
        }
        
        lblName.text = pName
        lblMove.text = pMove
        lblSkill.text = pSkill
        
        if let pSpecialStr = pSpecial {
            imgSpecial.image = UIImage(named: pSpecialStr)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
