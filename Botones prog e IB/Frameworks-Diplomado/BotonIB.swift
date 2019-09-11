//
//  BotonIB.swift
//  Frameworks-Diplomado
//
//  Created by Luis Mauricio Esparza Vazquez on 3/23/19.
//  Copyright © 2019 Schock. All rights reserved.

import UIKit

//Éstos botones vienen desde el Interface Builder (de arrastrarlos pues, no se definen de forma programática directamente en algun View Controller)

//Como el IB ya inicializa los botones, no podemos usar una función init. Más bien, lo iniciamos allá, lo presentamos con nuestra clase y le damos la función awakeFromNib() como si fuera un viewDidLoad() para botones.
@IBDesignable
class BotonIB: UIButton{
    
    @IBInspectable var color: UIColor = UIColor.red
    @IBInspectable var tamaño: Int = 0
    
    
    override func awakeFromNib() {
        backgroundColor = .blue
        
    }
    
    func shake(){
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.05
        shake.repeatCount = 3
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 10, y:center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 10, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
    }
}
