//
//  Results.swift
//  TableWithURLSongs
//
//  Created by Luis Mauricio Esparza Vazquez on 3/16/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit //reemplazo a foundations

//aqui ponemos las estructuras que usaremos para jalar todo lo de las urls

struct Results: Codable{//Necesitamos a codable para poder meter éste tipo de dato propio a funciones de codificacion.
    var resultCount: Int //Esto está dentro de json y se llama 'resultCount' para crear éste dato primero vemos la estructura del json.
    var results: [Tracks]// Los resultados nos traen Tracks, estructura que nosotros creamos por una razón.
}

struct Tracks: Codable{ //Creamos otra estructura tracks porque dentro de results en el json hay demasiadas variables tipo [String: _]
    var trackName: String //Dentro de esas muchas, está "trackName": <nombre de la cancion>.
    var artworkUrl100: String
}
