//
//  ViewController.swift
//  PrettyTableView
//
//  Created by Luis Mauricio Esparza Vazquez on 3/15/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    let alumno: [Alumno] = [Alumno(nombre: "Luis Mauricio Esparza Vázquez", carrera: "Ing. en Computación", imagen: "me", hobbies: ["Leer","Dibujar","Música","Videojuegos"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumno.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
        
        cell.textLabel?.text = alumno[indexPath.row].nombre
        cell.imageView?.image = UIImage(named: alumno[indexPath.row].imagen)
        
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        
        table.separatorColor = UIColor.clear
        
        return cell
    }
    
    //Agrandar celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = table.indexPathForSelectedRow
        
        let secondView = segue.destination as? SecondViewController
        
        secondView?.alumno = alumno[indexPath!.row]
    }
    
}

