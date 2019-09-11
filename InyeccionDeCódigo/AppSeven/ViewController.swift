//
//  ViewController.swift
//  AppSeven
//
//  Created by Luis Mauricio Esparza Vazquez on 3/2/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //esta variable usa la estructura alumno que declaramos en un archivo swift añadido al proyecto. Es la que intentaremos modificar desde otro view controller, i.e., con código en otro view controller.
    var alumno = Alumno(nombre: "Mauricio", edad: 23)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        print("1ºVista: \(alumno.nombre), \(alumno.edad).")
    }
    
    /*Preparamos la transición al secondView, para eso la declaramos y la casteamos al tipo de SecondViewController, ojo, allá declaramos una variable cadena de tipo string y está vacía.*/
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as? SecondViewController
        secondView?.dato = alumno  //mandamos una copia de la estructura que declaramos al inicio de código al segundo segue en su variable dato.
        secondView?.firstView = self //Con ésto no mandamos una copia del view controller, eso no es posible. Se manda una referencia, con ésto podemos manejar los datos de las estructuras en éste view controller desde el segundo.
    }

}

