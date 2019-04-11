//
//  Camion.swift
//  Proyecto1
//
//  Created by Dev2 on 11/04/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Camion:Vehiculo{
    
    var taraMaxima: Int
    var espacio: Double
    
    init(fabricante: String,
         modelo: String,
         anyo:String,
         kilometros: Int,
         
         taraMaxima: Int,
         espacio: Double) {
        
        self.taraMaxima = taraMaxima
        self.espacio = espacio
        
        super.init(fabricante: fabricante, modelo: modelo, anyo: anyo, kilometros: kilometros)
    }
    
    override var description: String{
        return "La tara mámixa es  \(self.taraMaxima)con un espacio de  \(self.espacio) y kilometros \(self.kilometros)"
    }
    

}
