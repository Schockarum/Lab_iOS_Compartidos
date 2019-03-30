//
//  ViewController.swift
//  PageController
//
//  Created by Luis Mauricio Esparza Vazquez on 3/29/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var containerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func setupConstraints(){
        
        containerView.anchor(top: view.an)
        
    }


}

