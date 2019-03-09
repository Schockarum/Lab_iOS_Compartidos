/*  Clases
 Las clases se manejan con apuntadores, por lo que es necesario que tengan inicializadores. No se pueden manejar nulos en su creación, a diferencia de las estructuras. Todo dentro de una clase es un apuntador.
 */
class Alumn{
    var name: String
    var age: Int
    var score: Float
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
        self.score = 0.0
    }
    
    func sayHi() -> String{
        return "Hola, mi nombre es \(name)"
    }
    
    func evaluate(){
        score = 20.0
    }
    
    func study(){
        print("Alumn is studying.")
    }
}

let jose = Alumn(name: "Jose", age:20) //Creamos al alumno Jose
let martin = jose //Creamos un alumno martin que es igual a Jose... excepto que es una referencia a Jose
martin.name = "Martin" //Al cambiarle el nombre a Martín, modificamos la referencia de Jose
print(jose.sayHi()) //Por lo que ahora, Jose se llama Martín

let german = Alumn(name: "German", age: 30)
//Las propiedades de una clase se pueden modificar dentro de las funciones. En una estructura, es no es así.
/*por seguridad y para evitar inyección de datos, se pueden definir las final class
 
 final class AnyClass{
 
 }
 
 */

/*  Estructuras */
struct Score{
    var value: Int
    
    mutating func evaluate(value: Int){ //Las propiedades en estructuras son inmutables; agregar ' mutating' lo hace posible.
        self.value = value
        self.value += 10
    }
}


/*  Diferencias y aplicaciones
 Uber, por ejemplo, donde los coches se mueven y actualizan su ubicación en el mapa:
 Las Clases, al ser referencias, nos permiten guardar historias, saber dónde estuvieron en un tiempo al cambiar referencias.
 Las Estructuras, al ser valores fijos, sólo actualizan el dato y permiten saber su ubicación actual.
 Actualizar valores != Actualizar referencias
 */


/*  Protocolos
 Protocolos basados en swift: Obligados. Si tiene 20 métodos, implementamos los 20, sin excepciones.
 Si los protocolos son son basados en Swift (dígase C++), podemos omitir métodos, son Opcionales (no el tipo de dato). */
class Engineer: Alumn{ //Implementamos la herencia, la clase Ingeniero hereda los métodos y parámetros del alumno
    override func sayHi() -> String {
        return "Trust me, I'm an Engineer."
    }
    
    override func study(){
        print("Engineer studying.")
    }
    
    override func evaluate() {
        self.score = 9_001
    }
}

let pepe = Engineer(name: "Pepe", age: 23)

func evaluateAlumn(alumno: Alumn){
    alumno.study()
}

evaluateAlumn(alumno: jose)
evaluateAlumn(alumno: pepe)
//evaluateAlumn espera un alumno, claramente pepe es un ingeniero, pero su padre es Alumno. Si pasa el padre, pasa el hijo.

/*  Herencia
 Sólo tenemos que implementar la herencia cuando queremos particularizar las cosas. Se comienza de abajo hacia arriba, de lo particular a lo general (abstracto) hasta que llegamos al punto más abstracto y general posible (o realmente hasta donde necesitas). */


/* as as? as!
 La palabra reservada 'as' sirve para hacer upcasting o downcasting. ¿Qué es?
 as? - someParameter as? dataType
 as! - someParameter as! dataType
 Donwcasting.- Ambos son ejemplos de downcasting, se refiere a las jerarquías de herencia. La base class, sería alúmno y está hasta arriba de la cadena de mando (de la jerarquía). AS? trata de hacer el downcasting de alumno a ingeniero de ser posible, si no, regresa nil. AS! asegura que es posible hacer el downcasting (requiere análisis por parte del programador).
 Upcasting.- Funciona con 'as', es subir de Ingeniero a Alumno. Algo debe estar mal si, aún después de heredar parámetros y métodos, requieres hacer un upcasting. No la hagas.
 */

/*Weak & Strong
 Las variables Strong se eliminan hasta que se cierra la app. Todas las variables por defecto son Strong, pero lo vemos mejor y más a fondo después.
 */
