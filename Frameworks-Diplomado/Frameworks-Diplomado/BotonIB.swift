//
//  BotonIB.swift
//  Frameworks-Diplomado
//
//  Created by Luis Mauricio Esparza Vazquez on 3/23/19.
//  Copyright © 2019 Schock. All rights reserved.

import UIKit

//Éstos botones vienen desde el Interface Builder (de arrastrarlos pues, no se definen de forma programática directamente en algun View Controller)

//Como el IB ya inicializa los botones, no podemos usar una función init. Más bien, lo iniciamos allá, lo presentamos con nuestra clase y le damos la función awakeFromNib() como si fuera un viewDidLoad() para botones.
class BotonIB: UIButton{
    override func awakeFromNib() {
        backgroundColor = .blue
    }
}
