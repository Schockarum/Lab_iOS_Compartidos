//Copia anterior de Día15 - URL.playground
//Con esta podemos ver un modo de visualizar el contenido de un URL en terminal (guardandolo en variable)

import Foundation
import PlaygroundSupport

struct Results: Codable{//Necesitamos a codable para poder meter éste tipo de dato propio a funciones de codificacion.
    var resultCount: Int //Esto está dentro de json y se llama 'resultCount' para crear éste dato primero vemos la estructura del json.
    var results: [Tracks]// Los resultados nos traen Tracks, estructura que nosotros creamos por una razón.
}

struct Tracks: Codable{ //Creamos otra estructura tracks porque dentro de results en el json hay demasiadas variables tipo [String: _]
    var trackName: String //Dentro de esas muchas, está "trackName": <nombre de la cancion>.
}

let url = URL(string: "http://itunes.apple.com/search?term=eluveitie")//Clase URL que se inicializa con la dirección

let jsonDecoder = JSONDecoder()

let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in //El servidor -url- responde con datos, respuesta o error.
    if let data = data, let string = String(data: data, encoding: .utf8){
        print(string)
    }
}//Cuando vemos la palabra 'shared', seguimos el patrón de diseño 'Singleton'; permite tener una única referencia de memoria, si queremos 20 urls para el ejemplo, haríamos 20 veces éste código.
task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true //El playground se ejecuta indefinidamente

