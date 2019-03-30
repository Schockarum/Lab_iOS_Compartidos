//
//  Extensions.swift
//  PageController
//
//  Created by Luis Mauricio Esparza Vazquez on 3/29/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
//
//    func anchor(top: , leading:, trailing:, bottom:, padding:, size:){
//
//    }
    func dimensionAnchors(height: NSLayoutDimension?, heightMultiplier: CGFloat = 1.0, width: NSLayoutDimension?, widthMultiplier: CGFloat = 1.0){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let height = height{
            heightAnchor.constraint(equalTo: height, multiplier: heightMultiplier).isActive = true
        }
        
        if let width = width{
            widthAnchor.constraint(equalTo: width, multiplier: widthMultiplier).isActive = true
        }
    }
}
