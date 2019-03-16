import Foundation
import PlaygroundSupport

//extension URL{
//    func withQueries(_ queries: [String: String]) -> URL{
//
//    }
//}

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
    if let data = data, let results = try? jsonDecoder.decode(Results.self, from: data){ //Si se logró crear data, construye los resultados a partir de buscar [String: Int] - que es la estructura de los datos, según - que se encuentra en la data.
        print(results.resultCount) // Si se logró todo lo anterior, imprime el atributo resultCount de los resultados.
        for track in results.results{//Para cada 'track' dentro del atributo 'results' de tipo [Tracks]
            print(track.trackName)//Imprime el 'trackName' de cada Track (llamada track)
        }
    }
}//Cuando vemos la palabra 'shared', seguimos el patrón de diseño 'Singleton'; permite tener una única referencia de memoria, si queremos 20 urls para el ejemplo, haríamos 20 veces éste código.
task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true //El playground se ejecuta indefinidamente

