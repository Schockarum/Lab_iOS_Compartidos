print("Hello, World!")
//con doble slash comentamos de una linea
/*
 Con slash asterisco asterisco slash
 podemos hacer comentarios multilinea
 */

//myConstant es una constante y no se puede alterar su contenido
let myConstant = "Primera constante"
print(myConstant)

//myVar es una variable y sí podemos cambiar su contenido
var myVar = "Primera variable"
print(myVar)

myVar = "Segundo valor de la variable"

//Los valores dentro de las variables pueden ser modificados siempre y cuando se respete su tipo
myVar = myVar + " " + myConstant
print(myVar)

let a = 10
let b = 30
let c = a + b
print(c)

/*por defecto, números con punto decimal son del tipo double
para darle tipo float, hacemos una declaración explícita */
let d: Float = 10.0
print(d)

/*Si quisieramos sumar a + d no sería posible porque son tipos de datos distintos
lo que hacemos es un cambio de tipo de alguna constante */
let suma = a + Int(d)
//Para imprimir mensajes y castear a tipo string dentro de un print, se hace lo siguiente:
print("El valor de suma es: \(suma)")

//bool no es una palabra reservada, entonces:
let bool = true

let e = 10
let f = 100
var suma2 = e + f

let g = 50
let h = 60
suma2 = g + h

//FUNCIONES
func sum(a: Int, b:Int) {
    let suma = a + b
    print("La suma de la función es: \(suma)")
}

//Llamado de funciones
sum(a:40, b:35)

//Retorno de funciones
func sum2(a:Double, b:Double) -> Double {
    return a + b
}

//Double tiene otras cosas dentro, en este caso el valor de pi
let doubleSum = sum2(a: 13.65, b: Double.pi)
print(doubleSum)

//Sin embargo, no sólo double puede hacer ese tipo de cosas
let pi = Float.pi
print(pi)

//Arreglos
var arreglo = [6,5,4,7,3,7,34]
print(arreglo)

//utilizamos una función integrada en nuestro arreglo para hacer append a un número
arreglo.append(52)
print(arreglo)

//otra función nos permite hacer append de una secuencia entera
var arreglo2 = [31,42,53,64,75]
arreglo.append(contentsOf: arreglo2)
print(arreglo)

//Arreglo vacío. No se puede igualar a un arreglo vacío. Más bien se hace lo siguiente:
var emptyArray = [Int]()
print(emptyArray.count)
