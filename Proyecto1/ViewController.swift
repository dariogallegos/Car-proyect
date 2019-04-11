//
//  ViewController.swift
//  Proyecto1
//
//  Created by Dev2 on 08/04/2019.
//  Copyright © 2019 Dev2. All rights reserved.
// comando +  shift + O

import UIKit



class ViewController: UIViewController {
    
    //diccionario con modelo como clave
    
    //var arrayCoches:[Coche]=[]
    
    var diccionaryCoches:[String:Coche]=[:]
    
    @IBOutlet weak var textFieldModelo: UITextField!
    
    @IBOutlet weak var textFieldMatricula: UITextField!
    
    @IBOutlet weak var textFieldFabricante: UITextField!
    
    @IBOutlet weak var textFieldAnyo: UITextField!
    
    @IBOutlet weak var textFieldPrecio: UITextField!
    
    @IBOutlet weak var textFieldSearch: UITextField!
    
    @IBOutlet weak var textFieldColletion: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSavePressed(_ sender: Any) {
        
        
        guard let modelo = textFieldModelo.text,
            let matricula = textFieldMatricula.text,
            let fabricante = textFieldFabricante.text,
            let anyo = textFieldAnyo.text,
            let precio = textFieldPrecio.text else {
            
                debugPrint("ha habido un problema")
                return
        }
        
        let coche = Coche(fabricante: fabricante, modelo: modelo, anyo: anyo, matricula: matricula, precio: Double(precio))

        
        //arrayCoches.append(coche)
        diccionaryCoches[modelo]=coche
        borrarFormulario()
      
    }
    
    func borrarFormulario(){
        textFieldModelo.text = ""
        textFieldMatricula.text = ""
        textFieldFabricante.text = ""
        textFieldAnyo.text = ""
        textFieldPrecio.text = ""
    }
    
    @IBAction func buttonPrintPress(_ sender: Any) {
        
        var colletionCars:String = ""
        
        for element in diccionaryCoches{
            colletionCars = colletionCars + element.value.description + "\n\n"
        }
        textFieldColletion.text = colletionCars
    }
    
   
    @IBAction func buttonSearchPress(_ sender: Any) {
        
        guard let modelo = textFieldSearch.text, let encontrado =   diccionaryCoches[modelo]
        else {
            debugPrint("ha habido un problema")
            return
        }
        rellenarFormulario(modelo, encontrado.fabricante, encontrado.anyo, encontrado.precio, encontrado.matricula)
        (sender as AnyObject).setTitle("Find it", for: .normal)
        (sender as! UIButton).isEnabled = false
        
    }
    
    func rellenarFormulario(_ modelo: String, _ fabricante: String, _ Anyo: String , _ precio: Double?, _ matricula: String?){
        
        textFieldModelo.text = modelo
        textFieldFabricante.text = fabricante
        textFieldAnyo.text = Anyo
        if let varPrecio = precio {
            
            textFieldPrecio.text = String(varPrecio)
        }
        textFieldMatricula.text = matricula
    }
}

