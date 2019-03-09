//Diccionarios en Swift

//En un diccionario accedemos a los diferentes valores mediante llaves, el modo de declarar diccionarios en swift es el siguiente:
let dictionary = ["Llave":"Valor"]

//Si queremos acceder al valor del diccionario dada una llave, debemos darle la llave al diccionario para que busque su valor
print(dictionary["Llave"])

let bandInfo = ["Name":"Eluveitie",
                "Gender":"Folk Metal",
                "Year":"2002",
                "Country":"Switzerland"]

//Un diccionario siempre regresa valores de tipo Optional, porque si le das una llave que no tiene, debe devolver algo, pero al no existir un valor, no podría regresar digamos int, String, Double, etc. por lo que regresa un Optional.

let emptyDictionary = [String: Int]()

let intToStringDictionary : [Int: String] = [1: "One",
                                             2: "Two",
                                             3: "Three",
                                             4: "Four",
                                             5:"Five"]

//Las estructuras de diccionarios vienen como formatos Jason, entonces se deben convertir a diccionarios para que swift los entienda. Se utilizan mucho al utilizar web services

//Los diccionarios son de tipos fijos, i.e., solo guardan valores predefinidos como [String:Int], [Int:String], [Double:Int], usw. donde todos y cada uno de los elementos deben de ser del tipo que se declara al inicio (o que se deduce).
//Sin embargo, existe truculentamente un tipo de dato llamado Any... por lo que podemos hacer:
var variableStudent : [String: Any] = ["Name": "Mauricio",
                                       "Age": 23,
                                       "Career": "Ing. Comp"]

//Sin embargo como el tipo Any no es de ningún otro tipo, se debe recurrir a lo sig:
let studentsAge1 = variableStudent["Age"] as! Int
let studentsAge2 = variableStudent["Age"] as? Int

print("Valor entero: \(studentsAge1)")
print("Valor opcional: \(String(describing: studentsAge2))")
//Para ésto debemos entender las diferencias entre '!' & '?' ; '?' como ya vimos, le dice al compilador que ahí puede o no existir un dato de tipo Int; '!' le dice al compilador que ahí existe, 100% seguro, un dato del tipo Int, por lo que ya no regresa un Optional, sino un Entero. Ésto nos puede generar errores y 'crashear' la app, se recomienda utilizar siempre un '?'.
print(studentsAge2 == studentsAge1 ? "Son iguales" : "No son iguales")
