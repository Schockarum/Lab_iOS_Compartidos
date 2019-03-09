import UIKit

func sumar (x: Int, y: Int){
    print(x + y)
}

func restar (x: Int, y: Int){
    print(x - y)
}

let miSuma = sumar //Las funciones deben de estar en un lugar de memoria. Al declarar funciones, les asignamos memoria. Al asignar una función a una literal, le pasamos su dirección de memoria, lo que es perfectamente válido.

func ejecutaOperacion(funcion: (Int, Int) -> (), a: Int, b: Int){
    funcion (a, b)
}

ejecutaOperacion(funcion: miSuma, a: 5, b: 10)
//Sin embargo, los closures no se definen así, sino { (parámetros) -> Tipo de retorno in Codigo }
var cadena: String = "Hola mundo" //Recordando un poco de tipado seguro (no inferido)

var miClosure: (Int, Int) -> () = {_,_ in
    
} //Así es el tipado seguro de un Closure.
