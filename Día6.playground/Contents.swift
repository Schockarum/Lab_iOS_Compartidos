/*Optionals.- Se utilizan para hacer referencias de valor. El padre de Swift es ObjectiveC, y ObjectiveC es una supercapa de muchas librerías muy útiles. Swift NO es una supercapa de ObjectiveC
 
 imaginemos:
 struct String *cadena;
 cadena = (struct String*)malloc(sizeof(struct String));
 Esos son apuntadores
 */
import UIKit
//Stripe.- servicio para creap apps móviles, tiene un framework para realizar cobros, incluso en OXXO. ¿Por qué PayPal no? Si se puede evitar, evitarlo; tiene un API compleja.
//Supongamos que en una app de cobro, se hace un pedido, se lanza un pago y se espera una respuesta; si el servicio de cobro se cae, la operación regresa un nulo, y debemos ser capaces de manejar nulos.
var cadena: String? = nil //Así consideramos la posibilidad de que una variable tenga o no un valor. NIL == NULL
//cadena = "¡Hola, mundo!"
//print(cadena!) //Al exclamar un valor que sabemos que es Optional, lo 'desenvolvemos' para traer únicamente su contenido; a éstas acciones se les conoce como Forced Unwrapping
/*Hay muchas más formas de trabajar con Optionals.
        ---         OPTIONAL    BINDING         ---     */
if let variable = cadena {
    print(variable)
}else{
    print("No hay valor alguno.")
}//Primero declaramos una variable temporal que liga a nuestro optional con una variable que infiere el dato, a partir de éste se valora la existencia o no de ésta. Para probar éste método, juega con la linea 14 (hacer Nil <--> String) y comenta la 15.
//Dato curioso, en un 'if' poner una coma en la condición es como poner un && AND.
//      ---         NIL         QUALESCENT(?)   ---
var cadenaBackup = cadena ?? "Hola"
print(cadenaBackup) //La declaración dice: Deja que la variable tome el valor de la otra, pero si no llegara a existir (nil), que tome el valor de la derecha.

//Forced Unwrapping, Optional Binding && Nil Qualescent. Las 3 formas de trabajar Optionals.


//Notas trabajando con app five
/*
 El navigation controller es un stack de vistas
 Las vistas modales no se agregan al stack de vistas, son más de uso temporal para recoger datos como log ins
 viewDidLoad solo carga al iniciar la app por primera vez
 El view will appear actua sobre la vista cada que se va a cargar a pantalla nuevamente
 
 Libros:
 El libro negro de los algoritmos //libro individual
 Goalkicker.com //libros
 devslopes.com ios development (buscar el ebook gratis) //cursos
 appbuildersacademy.com
 
 
 //MUST READ Si quieres generar tu propia empresa
 value proposition design
 business model generation
 
 //Desarrollo de ideas
 Hooked
 
 ¿Cómo pasar datos de una vista a su vista anterior?
 Es más fácil pasar datos hacia adelante que hacia atrás. Debemos serializar el dato y después recuperarlo.
 La maña está descrita en el código

 https://github.com/crashbit/2019-2
 
 */
