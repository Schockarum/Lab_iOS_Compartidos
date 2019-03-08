//
//  ViewController.swift
//  AppTwo
//
//  Created by Luis Mauricio Esparza Vazquez on 2/8/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib. Cada que iniciamos un View Controller, ésta es la primer función que se manda a llamar. En éste viewDidLoad vamos a poner las configuraciones iniciales de nuestra aplicacion.
        print("Cargando vista ...")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("La vista se encuentra en memoria; preparandose para aparecer.")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Vista en pantalla.")
        
    }
}

