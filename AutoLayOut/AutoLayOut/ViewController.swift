//
//  ViewController.swift
//  AutoLayOut
//
//  Created by Luis Mauricio Esparza Vazquez on 3/22/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    //Textfield declarado por código
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAutoLayOut()
    }
    
    //AutoLayOuts desde código
    func setupAutoLayOut() {
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        myView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        myView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        //Agregamos el Textfield que hicimos por código a la pantalla del view
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false //activamos el autolayout por código y ya solito se ajusta a los márgenes
        
        textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true //a 30 puntos del safe area del top
        
        textField.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 30.0).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 30.0).isActive = true
        
        
        textField.textColor = .white
        textField.text = "¡Hola, AutoLayout!"
        
        
        
        
    }
}

