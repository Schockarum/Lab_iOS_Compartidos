//
//  ViewController.swift
//  AppThree
//
//  Created by Luis Mauricio Esparza Vazquez on 2/9/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Todas las propiedades y las clases van al principio, aquí van el laber y text field
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    var isDark = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.textColor = UIColor.darkGray
        slider.isHidden = true
    }
    
    //Aquí se conectan las acciones; después de la función.
    
    @IBAction func addText(_ sender: UIButton) {
        //Todas las acciones siguientes ocurren una vez que se presiona el botón 'Agregar Texto'
        textLabel.text = textField.text//El text label obtiene el texto escrito
        textLabel.textColor = UIColor.orange //Le cambiamos color al text label
        textLabel.font = UIFont(name: "Zapfino", size: 34)
        //borramos el mensaje una vez que ya fue agregado
        
    }
    
    @IBAction func changeBackground(_ sender: UISwitch) {
        if sender.isOn{//el sender de la función es el switch
            self.view.backgroundColor = UIColor.white //self es el view controller actual
            textLabel.textColor = UIColor.black //siempre que regresemos el switch a encendido, el color de las letras del label seran negras
            textField.textColor = UIColor.black //de mismo modo, coloreamos al textfield
            textField.backgroundColor = UIColor.white
            isDark = false
            slider.isHidden = true
        }else{
            //Cuando se apague el switch -> modo nocturno. Letras de label y text field en gris claro y fondo en negro
            self.view.backgroundColor = UIColor.darkGray
            textLabel.textColor = UIColor.lightText
            textField.backgroundColor = UIColor.black
            textField.textColor = UIColor.white
            isDark = true
            slider.isHidden = false //escondemos el slider
        }
    }
    
    //método changeAlpha es para las acciones que desencadena el slider
    @IBAction func changeAlpha(_ sender: UISlider) {
        if isDark{
            self.view.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: CGFloat(1 - sender.value))
        }
    }
    
}

