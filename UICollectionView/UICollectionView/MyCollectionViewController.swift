//
//  MyCollectionViewController.swift
//  UICollectionView
//
//  Created by Luis Mauricio Esparza Vazquez on 3/23/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

private let reuseIdentifier = "miCelda" //id de la celda

class MyCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var imageFiles = [String]() //Manaje el arreglo, aqui van los nombres
    var images = [UIImage]() //Maneja las imágenes cargadas sacadas de los nombres
    let defaultSize = CGSize(width: 200, height: 321)
    @IBOutlet weak var botonGiro: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cargaImagenes()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count //Numero de imagenes que se lograron convertir a UIImage
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MyCollectionViewCell //casteamos la celda como la de nuestra clase.
    
        // Configure the cell
        cell.imageView.image = images[indexPath.row]
    
        return cell
    }
    
    //Esta función nos la da UICollectionViewDelegateFlowLayout
    //Nos deja establecer el tamaño para cada elemento
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return defaultSize
    }
    
    
    //acciones cuando se toca una imagen de alguna celda
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let myLayout = UICollectionViewFlowLayout()
//
//        if botonGiro.image == UIImage(named: "vertical"){
//            botonGiro.image = UIImage(named: "horizontal")
            myLayout.scrollDirection = .horizontal
//        }else{
//            botonGiro.image = UIImage(named: "vertical")
//            myLayout.scrollDirection = .vertical
//        }

    }
    
    func cargaImagenes(){
        imageFiles = ["j1","j2","j3","j4","j5","j6","j7","j8","j9","j10","j11","j12","j13","j14","j15","j16","j17"]

        for fileName in imageFiles{
            if let image = UIImage(named: fileName){ //Seguridad. Acostumbrarse a if let.
                images.append(image)
            }
        }
    }
    
    //Cuando se toque el botón del navigation, debe girar el layout
//    @IBAction func giraPantalla(_ sender: UIBarButtonItem, _ collectionView: ) {
//
//    }
//
}
