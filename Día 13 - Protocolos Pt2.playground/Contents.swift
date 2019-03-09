import Foundation

protocol Person{
    var firstName: String {get set}
    var lastName: String {get set}
    init(firstName: String, lastName: String)
}

//func updatePerson(person: Person) -> Person{
//    var newPerson: Person
//
//    return newPerson
//}

/*      POLIMORFISMO
 Las diversas formas en las que un objeto responde a un mensaje */
var personArray = [Person]() //Podemos usar protocolos como tipos de datos 7u7

struct Alumno: Person{
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Profesor: Person{
    var firstName: String
    var lastName: String
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var jose = Alumno(firstName: "José", lastName: "Perez")
var luis = Profesor(firstName: "Luis", lastName: "Hernández")

var academicos : [Person] = []
var alumnos : [Person] = []

academicos.append(jose)
academicos.append(luis) //Jsé y Luis son Person, por lo tanto pueden estar aquí.

if jose is Alumno{ //checamos que una variable en específico sea de un tipo
    print(jose.firstName)
}

/*  TYPECAST con Protocolos  */
for academico in academicos where academico is Alumno{ //Revisamos a todos los elementos que cumplan un tipo dentro de un array. Mucho más útil
    print(academico.firstName)
}
