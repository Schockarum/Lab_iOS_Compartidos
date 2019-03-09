import Foundation

protocol MyProtocol{ //Estan a la altura de las clases. Pueden implementarse para enums, structs y classes.
    func myFunction()
}

struct MiStruct: MyProtocol{ //Aquí vemos que la estructura es de tipo MyProtocol que hicimos antes.
    func myFunction() {
        print("Esta es una funcion")
    }
}

class MyClass: MyProtocol{ //También en classes.
    func myFunction() {
        print("Esta es una funcion")
    }
}

protocol FullName{
    var firstName: String {get set}
    var lastName: String {get set}
    var readOnly: String {get}
//    static var staticVar: String {get}
    
    mutating func getFullName() -> String
    
    //En clases y estructuras tenemos propiedades, pero aquí tenemos requerimientos de propiedades. Todo lo que declaramos en un protocolo es eso; se puede ver como un contrato, todo lo que va en un protocolo es como firmar un contrato.
}

struct Prueba: FullName{ //Recordemos que las estructuras son tipos de dato por valor, no por referencia.
    var firstName: String
    var lastName: String
    var readOnly: String
    
    //static var staticVar: String
    
    mutating func getFullName() -> String {
        firstName = "Hola" //Al ser por valor, debemos agregar 'mutating', pero únicamente si modificamos una variable.
        return firstName
    }
}

@objc protocol Phone{ //@objc = algo de Objective-C : Es para declarar optionals.
    var phonenumber: String {get set}
    @objc optional var emailAdress: String {get set} //Si quieres, lo implementas.
    func dialNumber()
    @objc optional func getEmail()
}

//Probamos lo anterior
//struct Prueba2: Phone{ //Las estructuras son incapaces de manejar objective-c... ésto es imposible cuando el protocolo tiene optionals u cosas de @objc. Las estructuras son tipos de dato por valor, y los opcionales son referencias.
//}
class Prueba2: Phone{
    var phonenumber: String = ""
    
    func dialNumber() {
        <#code#>
    }
}


//El desmadre comienza aquí (por si aún no captas lo anterior)
protocol Person: FullName{ //Person está heredando de FullName (3 variables y una función). Adicionalmente, Person tiene 1 var.
    var age: Int {get set}
}

struct Student: Person{ //Student hereda de Person, por lo tanto de FullName... por lo tanto, los protocolos sí manejan herencia múltiple...
    var age: Int //De Person
    var firstName: String //De FullName
    var lastName: String //De FullName
    var readOnly: String //De FullName
    func getFullName() -> String {
        return "algo" //Aquí la función no exige ser mutating porque no modificamos valores.
    }
}


