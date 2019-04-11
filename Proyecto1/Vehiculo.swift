//
//  Vehiculo.swift
//  Proyecto1
//
//  Created by Dev2 on 11/04/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Vehiculo:CustomStringConvertible{
    
    var fabricante: String
    var modelo: String
    var anyo: String
    var kilometros: Int
    
    var precio: Double?
    
    init(fabricante: String,
         modelo: String,
         anyo:String,
         kilometros: Int) {
        
        self.fabricante = fabricante
        self.modelo = modelo
        self.anyo = anyo
        self.kilometros = kilometros
        
    }
    
    var description: String{
        return "Soy un \(self.modelo) \(self.fabricante) del año \(self.anyo) con un precio de \(String(describing: self.precio))"
    }
}
