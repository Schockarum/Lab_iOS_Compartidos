//
//  tableTracks.swift
//  TableWithURLSongs
//
//  Created by Luis Mauricio Esparza Vazquez on 3/16/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit //quitamos el foundation, traemos uikit

//UISearchBarDelegate para implementar una barra de búsqueda
class TableTracks: UITableViewController, UISearchBarDelegate{
    
    var tracks: [Tracks] = []
    
    let searchController = UISearchController(searchResultsController: nil)//Tenemos un controlador de búsqueda, pero los resultados no hemos decidido a dónde mandarlos.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        //Presentar el navigation controller
        //Para esto hicimos desde el storyboard el anexo de un navigation controller.
        //Select tableViewController -> Editor -> Embed in -> NavigationController
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Track List"
        
        //Mostramos el SearchBar
        navigationItem.searchController = searchController //Ponemos el elemento de navegacion
        navigationItem.hidesSearchBarWhenScrolling = false //Barra siempre presente
        
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
        
        tableView.backgroundColor = UIColor.background()
        
        getTracks(string: "")//Al principio, no tiene nada por buscar
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaTrack", for: indexPath)
        
        cell.textLabel!.text = tracks[indexPath.row].trackName //track tiene dos atributos hasta este momento, requerimos el atributo de tipo "String" que contiene el nombre de la canción.
        cell.imageView!.image = getImage(url: tracks[indexPath.row].artworkUrl100)//Obtenemos el artwork de 100x100 de cada track
        
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        
        return cell
    }
    
    //Esta función nos va a traer las canciones que tendremos en el table
    func getTracks(string: String){
        //Las estructuras las definimos en Results.swift, no las ponemos aquí porque si llegaramos a usar esas estructuras en otros views, deberíamos definirlas otra vez. Mejor las ponemos en otro archivo de swift.
        let url = URL(string: "http://itunes.apple.com/search?term=\(string)")//Clase URL que se inicializa con la dirección
        
        let jsonDecoder = JSONDecoder()
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in //El servidor -url- responde con datos, respuesta o error.
            if let data = data, let results = try? jsonDecoder.decode(Results.self, from: data){ //Si se logró crear data, construye los resultados a partir de buscar [String: Int] - que es la estructura de los datos, según - que se encuentra en la data.
                var temp: [Tracks] = []
                for track in results.results{//Para cada 'track' dentro del atributo 'results' de tipo [Tracks]
                    print(track.trackName)//Imprime el 'trackName' de cada Track (llamada track)
                    temp.append(track)//El nombre lo metemos al arreglo que se pasa a tracks: [Tracks]
                }
                self.tracks = temp// Pasamos el arreglo lleno, para no repetir datos
                DispatchQueue.main.async{//En lo que el método obtiene los datos, de modo asíncrono se van pintando los datos.
                    self.tableView.reloadData()
            
                }
            }
        }//Cuando vemos la palabra 'shared', seguimos el patrón de diseño 'Singleton'; permite tener una única referencia de memoria, si queremos 20 urls para el ejemplo, haríamos 20 veces éste código.
        task.resume()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.count > 4{//Comienza a buscar cuando el texto es mayor a 4 letras
            getTracks(string: searchText) //Le pasamos a getTracks la info que debe buscar
        }else {
            tracks.removeAll() //Si es menor de 4, limpiamos el arreglo
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        }
    }
    
    func getImage(url: String) -> UIImage{
        let url = URL(string: url)
        let data = try? Data(contentsOf: url!)
        let image = UIImage(data: data!)
        return image!
    }
}
