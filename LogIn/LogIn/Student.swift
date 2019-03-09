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
