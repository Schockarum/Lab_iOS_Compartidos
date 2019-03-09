//Estudiar en casa, las clases de Abner son malas
/* Closures: otra vez */
import Foundation

let closure = { (parameters: String) in
    
}

//Las funciones pueden recibir closures
func sumList(intList: [Int], handler: (_: Int) -> ()){
    var sum = 0
    for number in intList{
        sum += number
    }
    
    handler(sum)
}

var sum = 0
let numberArray = [8,9,10,5,8]

func sortArray(array: [Int], handler: (_:[Int]) -> ()){
    var innerArray = array
    innerArray.sort()
    
    handler(innerArray)
}


var sortedArray = [Int]() //En esta variable vamos a cachar nuestro arreglo ordenado

sortArray(array: numberArray) { (numberArray) in
    sortedArray = Array
}
