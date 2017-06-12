//
//  PokeCell.swift
//  pokedex
//
//  Created by Michal Chorobik on 2017-05-21.
//  Copyright © 2017 Michal Chorobik. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {

    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    //*******rounded corners of the cell******
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    //****************************************
    
    func configureCell(_ pokemon: Pokemon){
        
        self.pokemon = pokemon
        nameLabel.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexID)")
        
    }

}
