//
//  MyCollectionViewController.swift
//  Collection-Diplomado
//
//  Created by Germán Santos Jaimes on 3/23/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MiCelda"

class MyCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var imageNames = [String]()
    var images = [UIImage]()
    let defaultSize = CGSize(width: 200, height: 321)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cargaImagenes()
    }
    
    func cargaImagenes(){
        imageNames = ["j1",
                      "j2",
                      "j3",
                      "j4",
                      "j5",
                      "j6",
                      "j7",
                      "j8",
                      "j9",
                      "j10",
                      "j11",
                      "j12",
                      "j13",
                      "j14",
                      "j15",
                      "j16",
                      "j17"]
        
        for fileName in imageNames{
            if let image = UIImage(named: fileName){
                images.append(image)
            }
        }
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return defaultSize
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //Girar el layout al picar una celda
//        let myLayout = UICollectionViewFlowLayout()
//        myLayout.scrollDirection = .horizontal
//        collectionView.setCollectionViewLayout(myLayout, animated: true)
        collectionView.cellForItem(at: indexPath)
        
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var header = MySupplementaryView()
        
        if kind == UICollectionView.elementKindSectionHeader{
            header = (collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "MyHeader", for: indexPath) as? MySupplementaryView)!
        }
        
        header.headerLabel.text = "Galeria"
        return header
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MyCollectionViewCell
    
        // Configure the cell
        cell.imageView.image = images[indexPath.row]
        
        return cell
    }
    
    func growCell(){
        
    }
}
