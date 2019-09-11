//
//  SecondViewController.swift
//  AppSeven
//
//  Created by Luis Mauricio Esparza Vazquez on 3/2/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var dato: Alumno! //Estamos seguros que el tipo será alumno (aunque no se recomienza hacer éstas cosas). Esto no funciona si queremos actualizar datos
    
    var firstView: ViewController! //Aquí recibimos una referencia a algun view controller. Esto es inyección de código.

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Alumno de 1ºView: \(dato!.nombre), \(dato!.edad)")
    }

    @IBAction func regresar(_ sender: Any) {
//        dato.edad = 30
//        print("Edad de: \(dato!.nombre) actualizada localmente, \(dato!.edad)")

        firstView.alumno.edad = 30 //Tomamos la referencia del primer view, actualizamos una de sus estructuras
        dismiss(animated: true, completion: nil)
        
    }
    
}
