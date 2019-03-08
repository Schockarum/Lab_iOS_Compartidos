//
//  Student.swift
//  LogIn
//
//  Created by Abner Castro on 3/1/19.
//  Copyright © 2019 Abner Castro. All rights reserved.
//

import Foundation

class Student {
    
    var nombre = String()
    var carrera = String()
    var nombreImagen = String()
    
    init() { }
    
    init(nombre: String, carrera: String, nombreImagen: String) {
        self.nombre = nombre
        self.carrera = carrera
        self.nombreImagen = nombreImagen
    }
    
}
