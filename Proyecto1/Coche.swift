//
//  Coche.swift
//  Proyecto1
//
//  Created by Dev2 on 09/04/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Coche:Vehiculo{
 
    let matricula: String?
    let puertas: Int

    
    init(fabricante: String,
        modelo: String,
        anyo:String,
        kilometros: Int,
        puertas: Int ,
        matricula: String? = nil){
        
        self.puertas = puertas
        self.matricula = matricula
        
        super.init(fabricante: fabricante, modelo: modelo, anyo: anyo, kilometros: kilometros)
    }
    
    override var description: String{
        return "soy un coche con \(String(describing: modelo)) y puertas \(puertas)"
    }

}
