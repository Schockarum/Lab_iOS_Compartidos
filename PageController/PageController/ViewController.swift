//
//  ViewController.swift
//  PageController
//
//  Created by José Antonio Arellano Mendoza on 3/29/19.
//  Copyright © 2019 José Antonio Arellano Mendoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var containerView: UIView!
    //Para que la imagen no se distorcione: En storyboard: Comntent Mode : Aspect Fit
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    //Propiedades
    var imageName = String()
    var pageIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupConstraints() {
        containerView.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: nil)
        //width nil, porque ya dicen el ancho loc constraints, de leading a trailing.
        //Altura de la vista, 0.5, por lo tanto la mitad de la altura de la vista.
        //Podemos borrar el widthMultiplier porque tiene un valor por default declarado en la funcion.
        containerView.dimensionAnchors(height: view.heightAnchor, heigthMultiplier: 0.5, width: nil)
        textView.anchor(top: containerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: view.bottomAnchor, padding: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
    }
    
    func setupUI() {
        textView.isEditable = false
        textView.isSelectable = false
        imageView.image = UIImage(named: imageName)
        //Centramos imagen respecto al contenedor (containerView)
        imageView.centerAnchors(centerX: containerView.centerXAnchor, centerY: containerView.centerYAnchor)
        imageView.dimensionAnchors(height: containerView.heightAnchor, heigthMultiplier: 0.5, width: nil)
    }


}

