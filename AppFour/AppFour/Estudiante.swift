//
//  Estudiante.swift
//  AppFour
//
//  Created by Luis Mauricio Esparza Vazquez on 2/15/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import Foundation

//En este nuevo archivo de swift vamos a generar una clase estudiante para guardar los parámetros que declaremos adentro.
class Estudiante {
    
    var nombre = ""
    var apellido = ""
    var edad = 0
    var carrera = ""
    var correo = ""
    var descripcion = ""
    var imageName = ""
    var numCuenta = ""
    var pasatiempos = ["Deportivos": "",
                       "Recreativos": "",
                       "Artísticos": "",
                       "Gastronómicos": ""]
//    var pasatiempos =
    
    //Con la palabra reservada init, podemos inicializar la clase
    init(nombre: String, apellido: String, edad: Int, carrera: String, correo: String, descripcion: String, imageName: String, numCuenta: String, pasatiempos: [String: String]){
        //Con esto creamos un objeto de la clase estudiante, declaramos los valores del sig modo:
        self.nombre = nombre
        self.apellido = apellido
        self.edad = edad
        self.carrera = carrera
        self.correo = correo
        self.descripcion = descripcion
        self.imageName = imageName
        self.numCuenta = numCuenta
    }
    
    init(){
        
    }
    
}
