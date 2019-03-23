//
//  ViewController.swift
//  Frameworks
//
//  Created by Luis Mauricio Esparza Vazquez on 3/23/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let boton: Boton = {
        let b = Boton()
        b.setTitle("click please", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.backgroundColor = .blue
        b.addTarget(self, action: #selector(clickon), for: .touchUpInside)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(boton)
        boton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        boton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

    @objc func clickon(){
        print("click")
    }

}

