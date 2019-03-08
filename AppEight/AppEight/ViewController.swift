//
//  ViewController.swift
//  AppEight
//
//  Created by Luis Mauricio Esparza Vazquez on 3/8/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Las alertas pueden aparecer en cualquier momento", preferredStyle: .alert) //Declaramos una alerta con titulo, mensaje y accion nula de completitud
        
        self.present(alert, animated: true, completion: nil) //Con esto presentamos la alerta animada cuando presionemos el boton.
    }
    
}

