//
//  ThirdViewController.swift
//  AppFive
//
//  Created by Luis Mauricio Esparza Vazquez on 2/16/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    var dato: String = ""
    var firstViewController: ViewController? //En esta variable es donde guardamos la referencia a la primer view controller o al view controller de donde precede este view controller.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        dato = "hola"
        firstViewController?.dataReceived(data: "Hola desde la tercera vista") //como esta es una funcion de la vista precedente, se debe declarar en el view controller del view de donde éste view procede xD (o sea del 1, porque del 1 pasamos al 3, que es éste, checa allá el código de esta función)
        //Para entender mejor, esto manda al primero la info que queremos mandar del tercero.
        dismiss(animated: true, completion: nil) //Como esta vista es modal, para 'quitarla' debemos darle dismiss y ya. Lo animamos pues para que se vea bonito :p
    }
    
}
