/* Enumeradores
 Nos permiten restringir tipos de datos al permitirnos generar nuevos que se ajusten a nuestras necesidades */
enum WeatherStates{
    case cloudy
    case sunny
    case rainy
    case snowing
    case windy
}

let state: WeatherStates = .windy

switch state {
case .cloudy:
    print("No sun in sight.")
case .sunny:
    print("Don't forget your sun protection.")
case .rainy:
    print("Bring an umbrella.")
case .snowing:
    print("Gloves, hat and triple layer clothing is a must today.")
case .windy:
    print("Unless you're a tornado hunter, stay inside.")
default:
    print("Where are you? MARS?!")
}

//Otros tipos de enum, estructuras más complejas y divertidas

enum TiposClima: Int{
    case nublado
    case fresco
    case soleado
    case lluvioso
    case templado
    case caliente
    case nevada
} //De acuerdo con lo que necesitemos, podemos o no definir un valor para el enum, más allá de darles un nombre. Dato curioso, Swift ya definió valores para los otros tipos aunque no los veamos, i.e., fresco ya es = 2, soleado ya es = 3, etc.

print(TiposClima.soleado.rawValue)

let tipo :TiposClima = .lluvioso
tipo.rawValue //Raw value trae el valor asociado al enum. Lluvioso es el 4º en lista y por default de Swift, tiene valor 3 porque comenzamos a contar de 0.
