//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Michal Chorobik on 2017-06-19.
//  Copyright © 2017 Michal Chorobik. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLBL: UILabel!
    @IBOutlet weak var typeLBL: UILabel!
    @IBOutlet weak var defenceLBL: UILabel!
    @IBOutlet weak var heightLBL: UILabel!
    @IBOutlet weak var pokedexIDLBL: UILabel!
    @IBOutlet weak var weightLBL: UILabel!
    @IBOutlet weak var attackLBL: UILabel!
    @IBOutlet weak var currentevoImg: UIImageView!
    @IBOutlet weak var nextevoImg: UIImageView!
    @IBOutlet weak var evoLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLBL.text = pokemon.name.capitalized

        let img = UIImage(named: "\(pokemon.pokedexID)")
        mainImg.image = img
        currentevoImg.image = img
        pokedexIDLBL.text = "\(pokemon.pokedexID)"
        
        pokemon.downloadPokemonDets {
            
            //this is only executed when downloadPokemonDets is done running
            self.updateUI()
            
        }
        
    }
    
    func updateUI(){
        
        attackLBL.text = pokemon.attack
        defenceLBL.text = pokemon.defense
        heightLBL.text = pokemon.height
        weightLBL.text = pokemon.weight
        typeLBL.text = pokemon.type
        descriptionLBL.text = pokemon.description
        
        if pokemon.nextEvolutionID == "" {
            evoLBL.text = "No Evolution"
            nextevoImg.isHidden = true
            
        } else {
            nextevoImg.isHidden = false
            nextevoImg.image = UIImage(named: pokemon.nextEvolutionID)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
            evoLBL.text = str
        }

    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
