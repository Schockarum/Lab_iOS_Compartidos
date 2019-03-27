//
//  ShoppingCart.swift
//  Carrito de compras
//
//  Created by Luis Mauricio Esparza Vazquez on 3/26/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import Foundation
import UIKit

class ShoppingCart{
    
    var productList: [(Product, Int, Int)] //Lista: (producto,cantidad,subtotal)
    var total: Int
    
//    init(product: Product, quantity: Int) {
//        self.productList = []
//        self.productList.append((product, quantity, (product.price * quantity)))
//        self.total = product.price * quantity
//    }
    
    init() {
        self.productList = []
        self.total = 0
    }
    
    func countCartItems(cart: ShoppingCart) -> Int{
        return productList.count
    }
    
    func calculateTotal(cart: ShoppingCart) -> Int{
        var total = 0
        for product in productList{
            total += product.1 * product.0.price //Total = Cantidad * Precio del producto
        }
        return total
    }
    
    func printCarContents(cart: ShoppingCart){
        for product in productList{
            print("\(product.0.title)")
        }
        
    }
}