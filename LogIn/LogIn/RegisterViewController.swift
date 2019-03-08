//
//  RegisterViewController.swift
//  LogIn
//
//  Created by Abner Castro on 3/1/19.
//  Copyright © 2019 Abner Castro. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var correoTextfield: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }
    
    func setupUI() {
        navigationItem.title = "Register"
        
        registerButton.setTitleColor(UIColor.white, for: .normal)
        registerButton.backgroundColor = UIColor.mainPink()
        registerButton.layer.cornerRadius = 5.0
        
        correoTextfield.becomeFirstResponder()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func hideKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
}
