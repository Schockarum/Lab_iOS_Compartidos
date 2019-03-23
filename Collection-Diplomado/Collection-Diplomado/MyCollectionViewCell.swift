//
//  MyCollectionViewCell.swift
//  Collection-Diplomado
//
//  Created by Germán Santos Jaimes on 3/23/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        imageView.layer.cornerRadius = 8
    }
    
}
