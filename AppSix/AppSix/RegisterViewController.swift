//
//  RegisterViewController.swift
//  AppSix
//
//  Created by Luis Mauricio Esparza Vazquez on 3/1/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func setupUI(){
        navigationItem.title = "Register"
        
        
        
    }


}
