//
//  SecondViewController.swift
//  AppFive
//
//  Created by Luis Mauricio Esparza Vazquez on 2/16/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

//Para poder recibir datos en una segunda vista, debo tener una variable capaz de recibirlos.
class SecondViewController: UIViewController {

    var valor:String = ""
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        print(valor)
        
        Label.text = valor
    }
    

    @IBAction func backToMainView(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)//como los view controllers trabajan en un stack, hacer un pop es lo mismo que quitar la vista actual y regresar a la inmediata anterior.
    }
    
    @IBAction func backToVista(_ sender: UIButton) {
        
    }
    
}
