//
//  ViewController.swift
//  AppNine
//
//  Created by Luis Mauricio Esparza Vazquez on 3/8/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

//Para el TableView, debemos agregar el DataSource y Delegate. basta con agregarlos separados por una coma. A esto se le llama ' adoptar '.
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let namesArray = ["Daniela","Carlos","Nohemi","Mauricio","Manitas","Aideé","Germán"] //arreglo definido para el table view
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Con lo siguiente conectamos los puentes a nuestro view controller.
        tableView.dataSource = self //DataSource se conecta al view controller donde estamos
        tableView.delegate = self //Delegate x2
    }

    //MARK: TableView DataSource ; se adopta primero éste porque debemos decirle de qué tamaño es. Como table view muestra una lista de cosas, lo más similiar y con lo que lo vamos a manejar es con arreglos. Lo definimos al inicio.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //Regresa un entero; el tamaño de nuestro table view.
            return namesArray.count //El tamaño del table view debe ser igual al tamaño del arreglo que queremos mostrar
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //cell for row at: crea las celdas del table view. Esta función se manda a llamar por cada elemento en nuestro arreglo, i.e., una celda por elemento.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = namesArray[indexPath.row] //Es importante que se maneje el arreglo al que le sacamos el largo, porque si excede el rango, crashea al no encontrar cosas y al faltarle, el tableview siempre estará incompleto.
        
        return cell
        
    }
    
    //MARK: TableView Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { //Es para definir el tamaño de las celdas
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //did select for row at:
        tableView.deselectRow(at: <#T##IndexPath#>, animated: true) //Con esto se deseleccionan las celdas que tocamos.
        
    }
    
}

