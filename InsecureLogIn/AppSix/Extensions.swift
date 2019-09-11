//
//  Extensions.swift
//  AppSix
//
//  Created by Luis Mauricio Esparza Vazquez on 3/1/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    //Una función de una clase que se puede utilizar sin necesidad de instanciar un objeto. (funciones estáticas en JAVA).
    class func mainColor() -> UIColor{
        //Los colores los podemos pasar de RGB a Swift en la pag https://www.uicolor.xyz/#/rgb-to-ui
        return UIColor(red:0.10, green:0.18, blue:0.80, alpha:1.0)
    }
    
    class func secondColor() -> UIColor{
        return UIColor(red: 0.0, green: 0.10, blue: 0.50, alpha:1.0)
    }
}
