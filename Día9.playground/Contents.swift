/* Los closures son bloques de código con funcionalidad */
let names = ["Martin", "Andrés", "Carlos", "Alex", "Israel", "Zaira"]
/*Para entender mejor el concepto, hagamo un ordenamiento de la lista anterior
primero creamos una función que recibe dos strings y dice si el primero es mayor que el segundo*/
func backward(string1: String, string2: String) -> Bool{
    return string1 > string2
}
func forward(string1: String, string2: String) -> Bool{
    return string1 < string2
}

print(names.sorted(by: backward))
print(names.sorted(by: forward))
/* Los closures son, entonces, código; funciones.*/

//Otro modo de definir a los closures
print(names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
}))

/* Los closures son bloques autónomos funcionales que podemos utilizar en nuestro código; bloques en C  u objective-c y lambdas en otros lenguajes; las funciones son casos especiales de closures.
 
    La sintaxis de los closures es similar a las funciones, no tienen nombre por lo que son más versátiles y simples
 
    ---     DECLARACION     ---
 { (parameters) -> return type in statements }

    ---     IMPLEMENTACION  ---
 Animaciones: algunas funciones son ejecutadas de forma asincrona.
 Recibir datos desde web services.
 Pasar datos entre view controllers.
 */

let intList = [23, 54, 67, 12, 43, 67, 1, 6, 7, 10, 10, 3]
print(intList.sorted(by: { (i1: Int, i2: Int) -> Bool in
    return i1 < i2
}))
