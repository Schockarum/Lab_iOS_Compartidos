//
//  Student.swift
//  AppSix
//
//  Created by Luis Mauricio Esparza Vazquez on 3/1/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import Foundation

class Student{
    
    var name = String()
    var career = String()
    var imageName = String()
    
    init(){
    }
    
    init(name: String, career: String){
        self.name = name
        self.career = career
    }
    
    init(name: String, career: String, imageName: String){
        self.name = name
        self.career = career
        self.imageName = imageName
    }
}
