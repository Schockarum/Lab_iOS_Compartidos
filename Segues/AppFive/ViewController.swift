//
//  ViewController.swift
//  AppFive
//
//  Created by Luis Mauricio Esparza Vazquez on 2/16/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var etiquetaDatos: UILabel!
    
    var datos: String = "" //variable en la que vamos a guardar los datos que nos envíe la vista 3
    var firstViewController: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("View did load.")
    }

    override func viewWillAppear(_ animated: Bool) { //Esta función se ejecuta cada que la vista regresa a pantalla activa
        print(datos)
        print("View will appear.")
        etiquetaDatos.isHidden = false //la etiqueta no está escondida, pero datos está vacío
        etiquetaDatos.text = datos //cuando regresemos del view 3, datos se actualiza, mostrando que recuperamos datos de allá
    }
    
    @IBAction func validate(_ sender: UIButton) {
        if let value = Int(textField.text!){ //Si el textfield no es int, da nil
            if value % 2 == 0{
                print("Es par.")
            }else{
                print("Es impar.")
            }
        }else{ //Aquí viene si el resultado es nil. La variable se crea sii no es nil, por lo tanto, no hay variable, estamos en else.
            print("No hay nada.")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "buttonToSecondView"{
            let secondView = segue.destination as? SecondViewController
            secondView?.valor = "¡Hola, Mundo!"
        }
        
        if segue.identifier == "toThirdView"{ //Este es el primer paso para ligar las vistas y recuperar datos de regreso
            let thirdView = segue.destination as? ThirdViewController//Guarda la ref de la view destino a donde sabemos que vamos
            thirdView?.firstViewController = self//Nos mandamos a nosotros mismos a un parámetro de la vista destino que guarda a su vez una referencia a la vista origen, de éste modo las ligamos de modo vista1 <-> vista 3
        }
    }
    
    //Declaramos éste método para después ligarlo a un método y no como acostumbramos. Este funciona en la vista 3 porque cuando la vista 3 la ligamos desde el botón dragón a una salida, desaparece la vista 3, le cede el control a la vista de donde viene, la 1, ésta. Así podemos salir de una vista modal primero declarando un método y luego ligándo.
    //De todos modos para pasar la info, no usamos esta, es el dragon.
    @IBAction func unsegue(segue: UIStoryboardSegue){
        if let firstView = segue.source as? ViewController{
            firstView.datos = "Hola"
        }
    }
    
    func dataReceived(data: String){ //Esta función se accede desde el tercero, que manda cositas. Imprime los datos que enviamos desde la tercera y actualiza mañosamente el valor en la primera vista desde una función en la tercera, justo antes de destruirse para volver acá.
        print(data)
        datos = data //datos es el valor local de la vista 1, data es el valor que la vista 3 le envió
    }
    
}

//https://github.com/crashbit/2019-2
