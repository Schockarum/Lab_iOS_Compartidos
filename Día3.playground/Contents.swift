/* Arreglos
 1.- De enteros */

var array = [3, 4, 3, 2]

//Función append de un número a un arreglo
func appendThree(withArray arr : inout[Int], _ number: Int){
    arr.append(number)
}

appendThree(withArray: &array, 3)
print(array)

//Función para recorrer un arreglo
func loopArray(array: [Int]){
    for number in array{
        print(number)
    }
}

loopArray(array: array)

//Otro modo de recorrer un arreglo sería con
func loopArray2(Arr : [Int]){
    for number in 0 ..< Arr.count {
        print(number, separator: ",")
    }
}

loopArray2(Arr: array)


//maximo común divisor usando un if implícito ' ? '

func mcd(_ firstNumber: Int, _ secondNumber: Int) -> Int{
    let minor = firstNumber < secondNumber ? firstNumber : secondNumber //Encontramos el número menor, i.e., si el primero es menor al segundo, asginamos el primero, caso contrario, asignamos el segundo.
    var res = 1 //nuestro resultado comienza en uno, porque es el mcd de todo número
    for divisor in 1 ... minor{ //recorremos desde 1 al número menor
        res = firstNumber % divisor == 0 && secondNumber % divisor == 0 ? divisor : res
    } //el resultado se actualizará en cada iteración donde el primer y segundo número módulo el resultado actual sea igual a cero
    return res //regresamos el resultado
}

print(mcd(108,70))

/*Función que quita los números en un arreglo*/
var newArray = [4,1,1,2,1,3]


func removeNumberFromArray(_ array : inout[Int], _ isTheNumber : Int) -> [Int]{
    var index = 0
    while index < array.count{
        if array[index] == isTheNumber{
            array.remove(at: index)
        }else{
            index += 1
        }
    }
    return array
}

print(removeNumberFromArray(&newArray, 1))
