//
//  Alumno.swift
//  PrettyTableView
//
//  Created by Luis Mauricio Esparza Vazquez on 3/22/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import Foundation

struct Alumno{
    let nombre: String
    let carrera: String
    let imagen: String
    let hobbies: [String]
    
    init(nombre: String, carrera: String, imagen: String, hobbies: [String]) {
        self.nombre = nombre
        self.carrera = carrera
        self.hobbies = hobbies
        self.imagen = imagen
    }
    
    func alumnoToArray(alumno: Alumno)->[String]{
        var array: [String] = []
        array.append(alumno.nombre)
        array.append(alumno.carrera)
        array.append(alumno.imagen)
        for hobby in alumno.hobbies{
            array.append(hobby)
        }
        return array
    }
}
