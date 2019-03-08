//
//  ViewController.swift
//  LogIn
//
//  Created by Abner Castro on 3/1/19.
//  Copyright © 2019 Abner Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    let user = ""
    let password = ""
    
    let student = Student(nombre: "Abner", carrera: "Ingeniería en Computación", nombreImagen: "face")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        view.endEditing(true)
    }
    
    func setupUI() {
        //Button setup
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.backgroundColor = UIColor.mainPink()
        
        loginButton.layer.cornerRadius = 5.0
        
        //Button register
        registerButton.setTitleColor(UIColor.mainPink(), for: .normal)
        
        
    }
    
    

    @IBAction func logIn(_ sender: Any) {
        if userTextField.text == user && passwordTextField.text == password {
            
            if let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "profileVC") as? ProfileViewController {
                
                nextVC.student = student
                
                let navigationController = UINavigationController(rootViewController: nextVC)
                
                self.present(navigationController, animated: true, completion: nil)
              
            }
            
            
        }
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
}

