import UIKit
/* Tipos de datos básicos
 String, Int, Float, Double, Bool */

/* Tuplas: Arreglos de tamaño fijo con contenidos no mutables
 Son tipos de datos primitivos, pero complejos, funcionan como contenedores
 Aunque los contenidos dentro de ella pueden cambiar, su longitud no puede. */

let tupla0 = (2, 3) // Tipado por inferencia de datos, como en OCaml
let tupla1 : (x: Int, y: Int) = (4, 5) // Tipado estricto

let (a,b) = tupla1
print(a)

// También manejamos una Wildcard como en OCaml, ' _ '
let (c,_) = tupla0
print(c)

// Editoriales recomendadas: Packt Pub, Apress
/* Rangos: Siempre tienen un rango inferior y otro superior
 Para definir un rango se usa:  ... | ..> | ..<
 */
let closedRange = 0...10
// Se puede iterar usando un rango
for i in 0...10{
    print(i)
}

var sum = 0
// El argumento central through se puede cambiar por to cuando no queremos que haga la acción una vez que llegue al límite
for i in stride(from: 5, through: 1, by: -1){
    print(i)
}

// Cláusula Where dentro de un For
for i in 0...10 where i % 2 == 0{
    print(i)
}

// Cláusula While por sí sola
while sum < 10 {
    sum += 1
    print(sum)
}

// Estructura Repeat-While
repeat{
    sum += 1
}while sum < 20

/* Switch: Es tal cual lo conocemos, pero cuando algún case es ambigüo, debemos poner un default
 Una característica es que podemos tener varios valores en un case, incluso rangos */
let number = 10
switch number {
case 0:
    print("Cero")
case 1,5:
    print("Uno al cinco")
case 6...10:
    print("Seis al diez")
default:
    print("Ningúno")
}

let color = "azul"
switch color {
case "rojo", "azul":
    print("aquí anda el color")
default:
    print("por acá no")
}
// Gracias a unicode podemos utilizar incluso emojis dentro de nombres de variables o strings. "control + command + spacebar"🤯
//Más ejemplos de switch
switch number {
case let x where x % 2 == 0:
    print("es par")
default:
    print("es non")
}

// ARC: Automatic Reference Counter, es el recolector de basura de Swift, cuenta las referencias a las variables, cuando ya no existen, se eliminan.

/*Aún más ejemplos de switch, ahora sobre tuplas; al estilo pattern matching
 Lo distinto que haremos es guardar temporalmente un valor para mostrarlo */
let coordinates = (x:4, y:0, z:0)

switch coordinates {
case (0,0,0):
    print("Está en el origen")
case (let x,0,0) where x % 2 == 0:
    print("Está en el eje x = \(x)")
case (0,_,0):
    print("Está en el eje y")
case (0,0,_):
    print("Está en el eje z")
default:
    print("En ningún lugar")
}
