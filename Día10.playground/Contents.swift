/*  --- CLASSES ---
 Las clases son tipos de dato por referencia, i.e., necesitan ser inicializadas.*/

class Alumno{
    /*Tenemos 3 modos de inicializar valores en clases:
     1) String?, que nos obliga a utilizar optional binding
     2) String = ""
     3) Con un inicializador */
    var nombre: String
    //Getters y Setters
    var edad: Int{
        get{ //Lo siguiente es de Getters, que se declaran de este modo.
            let promedio = 8
            return promedio
        }
        
        set{
            let temp = newValue //newValue es el nombre del parámetro que entra
            print(temp * 2)
        }
    }
    
    init(nombre: String){
        self.nombre = nombre
        print("Hola, mi nombre es \(nombre)")
    }
    /*Tambien existen de-inicializadores. Cuando las referencias ya no son utilizadas, deben destruirse. Aquí entra el deinit, a ejecutar un código que sucede cuando no hay referencias y se debe destruir para no gastar memoria.*/
    deinit {
        print("Adios. Atte: \(nombre)")
    }
}
//Para ver en qué punto se ejecuta, hacemos
var alumno = Alumno(nombre: "José")
alumno = Alumno(nombre: "Luis")


//Como las clases son referencias de memoria, sería tonto declarar instancias como var.
let mau = Alumno(nombre: "Mauricio")

/*  CLASS PROPERTIES
 Existen los getters, que pueden declararse directamente en las variables, arriba definimos edad, del estilo Get y Set de JAVA */
print("\(mau.nombre): \(mau.edad) años.")
mau.edad = 23 //causaría un error sin un setter, la variable edad sólo estaría dispuesta para ser de tipo get, entonces agregamos un set y, del mismo modo, vemos el comportamiento.
print("Asignamos 23 a la edad, considerando que el set es temp * 2")
print("\(mau.nombre): \(mau.edad) años.") //Concluímos que la edad no se cambia porque nuestro get mañosamente tiene return 8... hay que cambiarlo.

/* La idea de los Getters y los Setters es que nosotros trabajemos con nuestros valores, mismos que podemos calcular y definir concretamente para que no existan errores.*/

/*  OBSERVADORES
 Agregarlos nos ayuda a ver cuándo una variable se cambió, se va a cambiar o permanece constante
 willSet() - revisa cuando se va a cambiar
 didSet() - revisa cuando ya se cambió
 
 Con ésto, se generan dos nuevos valores, newValue & oldValue.
 willSet maneja newValue (porque es al que se cambiará)
 didSet maneja oldValur (porque es el que tenía antes del cambio)
 */

class Estudiante{
    //Cosa importante, cuando se utilizan observadores, no se puede tener inicializador, para ésto se deben inicializar las variables en declaración.
    var nombre: String = ""
    var edad: Int = 0{
        willSet{
            print("______")
            print("Valor actual \(edad)")
            print("Valor nuevo \(newValue) \n")
        }
        
        didSet{
            print("Valor anterior \(oldValue)")
            print("Valor actual \(edad) \n______")
        }
    }
}

var carlos = Estudiante()
carlos.edad = 22
carlos.edad = 50
