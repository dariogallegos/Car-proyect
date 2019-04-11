//
//  Coche.swift
//  Proyecto1
//
//  Created by Dev2 on 09/04/2019.
//  Copyright © 2019 Dev2. All rights reserved.
//

import Foundation

class Coche:CustomStringConvertible {
 
    
    let matricula: String?
    let puertas: Int

    
    init(puertas: Int , matricula: String? = nil){
        self.puertas = puertas
        self.matricula = matricula
    }
    
    var description: String{
        return "soy un coche con \(String(describing: matricula)) y puertas \(puertas)"
    }

}
