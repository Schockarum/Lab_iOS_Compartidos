//
//  ViewController.swift
//  TableViewTestApp
//
//  Created by Luis Mauricio Esparza Vazquez on 3/9/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { //Se recomienda agregarlos en el orden que se ejecutan

    @IBOutlet weak var table: UITableView! //Como el tableView tiene toda la info que queremos mover de un lado a otro de nuestros renglones, la declaramos como variable para poder utilizar sus datos entre movimientos de segue.
    
    var alumnos: [String] = ["Mauricio","Samuel","Alejandro","Thomas","Brenda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//¿Cuántos renglones qiuero?
        return alumnos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) //Reutiliza una celda una vez que ha salido de la cola. Cada celda que agregemos a un renglón debe llevar un identificador (las celdas las añadimos en el storyboard)
        /*  IMPORTANTE
         Cuando se recicla la celda, mantiene sus propiedades y todas las modificaciones que se le hayan hecho, ya sea al picarla u otra cosa. */
        
        //Todas las celdas tienen un UIImage y un Título por default, por lo que hacemos:
        cell.textLabel?.text = alumnos[indexPath.row] //indexPath maneja los índices en su atributo row
        
        return cell //Devolvemos la celda que acabamos de personalizar
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //Acciones cuando seleccionamos la celda
//        print(alumnos[indexPath.row]) //Imprimimos en consola la celda seleccionada
        
        //Table view sabe qué celda fue presionada, entonces el manejo de celdas lo hacemos desde él.
        let cell = tableView.cellForRow(at: indexPath)

        
        /*  ALERTAS  */
        let optionMenu = UIAlertController(title: "Reprobar alumno", message: "¿Desea reprobar a este alumno?", preferredStyle: .alert)
        /*  OPCIONES DE ALERTAS  */
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        let acceptAction = UIAlertAction(title: "Reprobar", style: .default, handler: {(UIAlertAction) in
            cell?.accessoryType = .checkmark //Checkmark a la celda seleccionada, no se quita!
            
            if cell?.accessoryType.rawValue == 0{ //0 es que no tiene palomita
                cell?.accessoryType = .checkmark
            }else{// !0 es que tiene alguna marca
                cell?.accessoryType = .none
            }
            
            self.performSegue(withIdentifier: "toSecondView", sender: self) //los metodos dentro de closures se preceden con ' self '.
        })
        /*  PRESENTAR ALERTAS  */
        optionMenu.addAction(cancelAction)
        optionMenu.addAction(acceptAction)
        present(optionMenu, animated: true, completion: nil)
    }
    
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) { // BORRAR COSAS DEL TABLE VIEW
//        if editingStyle == .delete{
//            alumnos.remove(at: indexPath.row) //Eliminamos al alúmno del arreglo
//            tableView.reloadData() //Recargamos la tabla, ahora sin el alumno
//        }
//    }
    
    /*  DELETES FANCY CON SWIPES  */
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {//Trailing es un sweep de derecha a izquierda; Leading es el de izquierda a derecha
        let deleteAction = UIContextualAction(style: .destructive, title: "Borrar") { (action, sourceView, completionHandler) in
                self.alumnos.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            
                completionHandler(true)
        }
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        return swipeConfiguration
    }
    
    /*  SHARES FANCY CON SWIPES  */
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {//Leading = de derecha a izquierda
        let shareAction = UIContextualAction(style: .normal, title: "Compartir") { (action, sourceView, completion) in
            let defaultText = "Reprobando a " + self.alumnos[indexPath.row]
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil) // APLICATION ACTIVITIES SON LAS APPS CON QUIEN COMPARTES INFOOO!!!!
            self.present(activityController, animated: true, completion: nil)
            completion(true)
        }
        
        shareAction.backgroundColor = .orange
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [shareAction])
        return swipeConfiguration
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {//Independientemente del segue, le decimos al view que no lo haga, aunque sí se va a preparar. La razón de poner este alto, es porque mostramos una alerta, depende del resultado de la alerta si hacemos o no el segue.
        return false //Nel que hace el perform del segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //El segue que queremos hacer viene de una tabla de la cual no tenemos atributos conocidos, la declaramos como variable al comienzo, pero para saber qué columna se picó, hacemos:
        let indexPath = table.indexPathForSelectedRow // índice de la fila presionada
        
        let secondView = segue.destination as? SecondViewController //segue.destination nos da un viewController, pero específicamente, queremos que ese viewController sea del tipo SecondViewController, por lo que hacemos el cast.
        secondView?.data = alumnos[(indexPath?.row)!] //pasamos a 'dato' del segundo view lo que esté en el alumno del índice presionado.
    }

}

