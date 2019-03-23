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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        cargaImagenes()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

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
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let myLayout = UICollectionViewFlowLayout()
        
        myLayout.scrollDirection = .horizontal
        
        collectionView.setCollectionViewLayout(myLayout, animated: true)
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    func cargaImagenes(){
        imageFiles = ["j1","j2","j3","j4","j5","j6","j7","j8","j9","j10","j11","j12","j13","j14","j15","j16","j17"]

        for fileName in imageFiles{
            if let image = UIImage(named: fileName){ //Seguridad. Acostumbrarse a if let.
                images.append(image)
            }
        }
        
        
    }

}
