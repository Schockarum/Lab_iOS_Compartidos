//
//  Boton.swift
//  Frameworks
//
//  Created by Luis Mauricio Esparza Vazquez on 3/23/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

//Ésta clase es para botones que definimos de forma programática y queremos inicializarlos con características personalizadas.
class Boton: UIButton {
    override init(frame: CGRect) {
        super.init(frame:frame)
        print("Constructor")
        backgroundColor = .red
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
