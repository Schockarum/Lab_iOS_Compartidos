//
//  ViewController.swift
//  AutoLayOut
//
//  Created by Luis Mauricio Esparza Vazquez on 3/22/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Declaracion de views
        let purpleView = UIView()
        let cyanView = UIView()
        let greenView = UIView()
        let redView = UIView()
        let yellowView = UIView()
        let orangeView = UIView()
        
        let cyanView2 = UIView()
        let purpleView2 = UIView()
        let redView2 = UIView()
        let greenView2 = UIView()
        let yellowView2 = UIView()
        let orangeView2 = UIView()
        
        let blackView = UIView()
        
        //Colores de los views
        purpleView.backgroundColor = .purple
        cyanView.backgroundColor = .cyan
        greenView.backgroundColor = .green
        redView.backgroundColor = .red
        yellowView.backgroundColor = .yellow
        orangeView.backgroundColor = .orange
        
        cyanView2.backgroundColor = .cyan
        purpleView2.backgroundColor = .purple
        redView2.backgroundColor = .red
        greenView2.backgroundColor = .green
        yellowView2.backgroundColor = .yellow
        orangeView2.backgroundColor = .orange
        
        blackView.backgroundColor = .black
        
        //Agregando los views como subviews al principal
        view.addSubview(purpleView)
        view.addSubview(cyanView)
        view.addSubview(greenView)
        view.addSubview(redView)
        view.addSubview(yellowView)
        view.addSubview(orangeView)
        
        view.addSubview(cyanView2)
        view.addSubview(purpleView2)
        view.addSubview(redView2)
        view.addSubview(greenView2)
        view.addSubview(yellowView2)
        view.addSubview(orangeView2)
        
        
        view.addSubview(blackView)
        //Activando el AutoLayOut para cada cubo, la referencia es el cyan
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        cyanView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        cyanView2.translatesAutoresizingMaskIntoConstraints = false
        purpleView2.translatesAutoresizingMaskIntoConstraints = false
        redView2.translatesAutoresizingMaskIntoConstraints = false
        greenView2.translatesAutoresizingMaskIntoConstraints = false
        yellowView2.translatesAutoresizingMaskIntoConstraints = false
        orangeView2.translatesAutoresizingMaskIntoConstraints = false
        
        blackView.translatesAutoresizingMaskIntoConstraints = false
        //Definiendo constraints de los anchors
        cyanView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        cyanView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        purpleView.topAnchor.constraint(equalTo: cyanView.bottomAnchor, constant: 8).isActive = true
        purpleView.trailingAnchor.constraint(equalTo: cyanView.trailingAnchor).isActive = true
        
        greenView.topAnchor.constraint(equalTo: cyanView.topAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo: purpleView.bottomAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        greenView.trailingAnchor.constraint(equalTo: cyanView.leadingAnchor, constant: -8).isActive = true
        
        redView.topAnchor.constraint(equalTo: purpleView.bottomAnchor, constant: 8).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        yellowView.topAnchor.constraint(equalTo: redView.topAnchor).isActive = true
        yellowView.trailingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -8).isActive = true

        orangeView.topAnchor.constraint(equalTo: redView.topAnchor).isActive = true
        orangeView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        orangeView.trailingAnchor.constraint(equalTo: yellowView.leadingAnchor, constant: -8).isActive = true
        orangeView.bottomAnchor.constraint(equalTo: yellowView.bottomAnchor).isActive = true
        
        cyanView2.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 8).isActive = true
        cyanView2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        purpleView2.topAnchor.constraint(equalTo: cyanView2.bottomAnchor, constant: 8).isActive = true
        purpleView2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        redView2.topAnchor.constraint(equalTo: purpleView2.bottomAnchor, constant: 8).isActive = true
        redView2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        
        greenView2.topAnchor.constraint(equalTo: cyanView2.topAnchor).isActive = true
        greenView2.leadingAnchor.constraint(equalTo: cyanView2.trailingAnchor, constant: 8).isActive = true
        greenView2.bottomAnchor.constraint(equalTo: purpleView2.bottomAnchor).isActive = true
        greenView2.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        yellowView2.topAnchor.constraint(equalTo: redView2.topAnchor).isActive = true
        yellowView2.leadingAnchor.constraint(equalTo: redView2.trailingAnchor, constant: 8).isActive = true
        yellowView2.bottomAnchor.constraint(equalTo: redView2.bottomAnchor).isActive = true
        
        orangeView2.topAnchor.constraint(equalTo: redView2.topAnchor).isActive = true
        orangeView2.leadingAnchor.constraint(equalTo: yellowView2.trailingAnchor, constant: 8).isActive = true
        orangeView2.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        orangeView2.bottomAnchor.constraint(equalTo: redView2.bottomAnchor).isActive = true
        
        blackView.topAnchor.constraint(equalTo: redView2.bottomAnchor, constant: 8).isActive = true
        blackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        blackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        blackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        
        //Tamaño de los cubos
        purpleView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        purpleView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        cyanView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        cyanView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        yellowView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        yellowView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        cyanView2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        cyanView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        purpleView2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        purpleView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        redView2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        redView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        yellowView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        yellowView2.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
}

