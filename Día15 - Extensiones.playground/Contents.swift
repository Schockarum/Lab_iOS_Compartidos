import UIKit

extension String{
    func toUpper(){
        print("Altas")
    }
    
    func getFirstChar() -> Character?{ //Como puede recibir cadena vacía, lo ponemos optional
        guard characters.count > 0 else { return nil }
        return self[startIndex]
    }
}

var cadena: String = "Hola, mundo"
cadena.toUpper()
cadena.getFirstChar()


protocol Estudiar{
    
}

//La idea de usar extensiones para que se 'hereden' hacia las clases, son formas de hacer REGLAS que aseguren su comportamiento.
extension Estudiar{
    func estudia(){
        print("Estudiando")
    }
}

class Alumno: Estudiar{
    
}

class Profesor: Estudiar{
    
}

var alumno = Alumno()
var profesor = Profesor()
alumno.estudia()
profesor.estudia()

extension Int{
    var cuadrado: Int{
        return self*self
    }
}

print(2.cuadrado)
