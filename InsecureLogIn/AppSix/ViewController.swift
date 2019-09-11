//
//  ViewController.swift
//  AppSix
//
//  Created by Luis Mauricio Esparza Vazquez on 3/1/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    let user = "Mauricio"
    let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    func setupUI(){
        //Button setup configuration
        logInButton.setTitleColor(UIColor .white, for: .normal)
        logInButton.backgroundColor = UIColor.secondColor()
        logInButton.layer.cornerRadius = 7.0
        
        //Button register
        registerButton.setTitleColor(UIColor.secondColor(), for: .normal)
        
    }

    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        _ = UIGestureRecognizer(target: self, action: #selector(hideKeyboard))
    }
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func logIn(_ sender: UIButton) {
        if userTextField.text == user && passwordTextField.text == password{
            _ = self.storyboard?.instantiateViewController(withIdentifier: "profileVC") //as? ProfileViewController{
//                nextViewController.student = student
//
//                let navigationController = UINavigationController(rootViewController: nextViewController)
//
//            self.present(nextVC!, animated: true, completion: nil)
//            }
        }
    }
 
    override func viewWillDisappear(_ animated: Bool) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
}

