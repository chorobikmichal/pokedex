//
//  Constants.swift
//  pokedex
//
//  Created by Michal Chorobik on 2017-06-22.
//  Copyright © 2017 Michal Chorobik. All rights reserved.
//

import Foundation

let URL_BASE = "http://pokeapi.co"
let URL_POKEMON = "/api/v1/pokemon/"

//allows the app to wait for data to be downloaded before it starts assigning stuff 
typealias DownloadComplete = () -> ()
