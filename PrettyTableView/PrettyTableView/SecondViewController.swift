//
//  SecondViewController.swift
//  PrettyTableView
//
//  Created by Luis Mauricio Esparza Vazquez on 3/22/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var imageBackground: UIImageView!
    
    var alumno: Alumno = Alumno(nombre: "", carrera: "", imagen: "", hobbies: [""])
    var atributos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        atributos = alumno.alumnoToArray(alumno: alumno)//[nombre,carrera,imagen,hobbies]
        imagen.image = UIImage(named: atributos[2])
        imageBackground.image = UIImage(named: "uGa83RG")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return atributos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell") else {return UITableViewCell()}
        if indexPath.row == 2{
            cell.textLabel?.text = ""
            cell.backgroundColor = .clear
        }else{
            cell.textLabel?.text = atributos[indexPath.row]
        
        cell.backgroundColor = .clear
        }
        return cell
    }
}
