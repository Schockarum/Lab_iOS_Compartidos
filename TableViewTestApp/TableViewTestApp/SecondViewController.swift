//
//  SecondViewController.swift
//  TableViewTestApp
//
//  Created by Luis Mauricio Esparza Vazquez on 3/9/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var data : String = "" //Inicializamos un dato que aparecera en el second view controller
    @IBOutlet weak var etiqueta: UILabel! //Se hizo a manita, queda pendiente el ligado, indicado por la bolita en el número de línea de código
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = data //Cada que la app cargue, el atributo que haya en data se pondrá en lugar del Label
    }
    
    
    @IBAction func goBack(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
    }
}
