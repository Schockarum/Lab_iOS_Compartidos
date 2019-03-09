//Funciones
func myFunction(){
    print("Hello, World!")
}

myFunction()

func myTestFunction(param: Int, x: String){
    print("Este es el parametro : \(param) \(x)")
}

myTestFunction(param: 3, x:"Hola")

/* Apple recomienda que las funciones tengan sentido, algo sencillo como editar las etiquetas */
func multiplica(_ a: Int, por b: Int){
    print(a*b)
}
print(multiplica(3, por: 8))

/* Para que Swift regrese valores, utilizamos ->
 Aquí aplicamos un retorno de valor de una función e incluso agregamos los parametros de retorno
 */
func multidiv(_ a: Int, por b: Int) -> (Int, Float){
    return(a*b, Float(a/b))
}
let result = multidiv(4, por: 8)
print(result.1)


/*Más funciones, ésta vez con apuntadores.
 Como las funciones reciben copias de los parámetros que terminan siendo deshechadas, para modificar un valor
 dentro de una función, nos vemos obligados a meter referencias (apuntadores) a las funciones
 
 Para facilitarnos las cosas, los apuntadores de Swift se llaman ' inout '
 */
func increment(_ value: inout Int){
    value += 1
    print(value)
}

var any = 3
//Como todos los enteros se declaran implicitamente como 'let' y no como 'var', increment(&3) no es valido.
increment(&any)
print(any)


/* Overloading */
func getValue() -> Int {
    return 10
}

func getValue() -> String{
    return "Hola, mundo"
}

/* Repetimos el nombre de una funcion, son idénticas en parámetros.
 Cambia el tipo de dato que regresan, para poder utilizarlas debemos especificar
 QUÉ es lo que queremos
 */
let valorTemp0: Int = getValue()
let valorTemp1: String = getValue()

// Libros que usaremos: Intro to App Development & App Development With Swift
/* Intro a la programación funcional con Swift */
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func substract(_ a: Int, _ b: Int) -> Int{
    return a - b
}
// Si una función se puede asignar a una variable y podemos ingresar variables a funciones... podemos ingresar funciones como variables de funciones.
var function = add
function(2,2)

var function2 = substract
// Funciones que reciben funciones
func printResult(_ function: (Int, Int) -> Int, _ a:Int, _ b:Int){
    let result = function(a,b)
    print("El resultado de la funcion es: \(result)")
}

// La llamamos usando la única funcion declarada que tenemos ya guardada dentro de una constante y los parámetros a ingresar a dicha funcion, tal y como lo establecimos en la funcion printResult.
printResult(function, 3, 4)
printResult(function2, 10, 2)
