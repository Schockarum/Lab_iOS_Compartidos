//
//  ProfileViewController.swift
//  AppSix
//
//  Created by Luis Mauricio Esparza Vazquez on 3/1/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var studentCareer: UILabel!
    
    var student = Student(name: "Mauricio", career: "Ingeniería en Computación", imageName: "profilePhoto")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        //Right button
        let logOutButton = UIBarButtonItem(title: "Log Out", style: .done, target: self, action: #selector(logOut)) //Las funciones del tipo #selector son de objectiveC, y por cuestion de sintaxis necesitamos declarar @objc func <nombre> para que se pueda utilizar dentro de un selector.
        navigationItem.rightBarButtonItem = logOutButton
        
        studentName.text = student.name
        studentCareer.text = student.career
//        userImage.image = UIImage(named: "profilePicture")
        
    }
    
    @objc func logOut(){
        let alert =
            UIAlertController(title: "Log Out", message: "¿Estás seguro de querer cerrar sesión?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in self.dismiss(animated: true, completion: nil)}))
        
        self.dismiss(animated: true, completion: nil) //Dismiss quita la vista
        
        present(alert, animated: true, completion: nil)
    }

}
