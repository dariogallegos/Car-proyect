//
//  Camion.swift
//  Proyecto1
//
//  Created by Dev2 on 11/04/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Camion{
    
    var taraMaxima: Int
    var espacio: Double
    var kilometros: Int
    
    init(taraMaxima: Int ,espacio: Double, kilometros: Int) {
        self.taraMaxima = taraMaxima
        self.espacio = espacio
        self.kilometros = kilometros
    }
    
    var description: String{
        return "La tara mámixa es  \(self.taraMaxima)con un espacio de  \(self.espacio) y kilometros \(self.kilometros)"
    }
    

}
