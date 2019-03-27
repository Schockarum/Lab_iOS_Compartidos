//
//  ProductDetailViewController.swift
//  Carrito de compras
//
//  Created by Luis Mauricio Esparza Vazquez on 3/26/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var returnButton: UIButton!
    
    var product = Product(image: UIImage(named: "hipster gradient")!, title: "This is not supposed to appear", price: 9001) //Si ésto aparece, 'c bale yorar, po fabo'.
    var productListCartControl: ItemSaleList! //Para inyectar código
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productImage.image = product.image
        productTitle.text = product.title
        productPrice.text = "$" + String(product.price) + ".ºº"
        
        //Escondemos el navigation bar para que el cliente no escape 7u7
        navigationController?.isNavigationBarHidden = true
        
        //Nociero, le ponemos un tache dificil de ver para que sí escape :(
        returnButton.setTitle("x", for: .normal)
        returnButton.tintColor = .lightGray
    }
    
    //Acciones
    @IBAction func returnToProductList(_ sender: Any) {
        //Antes de que el cliente escape, reactivamos el navigation bar y hacemos pop con el botón oculto de escape.
        navigationController?.isNavigationBarHidden = false
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addToCart(_ sender: PurchaseButton) {
        //Cuando agreguemos algo al coche, añadimos a la lista del 1º view el producto, cantidad y subtotal
        #warning("Tenemos un placeholder, hay que encontrar el modo de implementar un contador de cantidad actualizable en la pantalla de compra")
        productListCartControl.cart.productList.append((product, 1, product.price * 1))
        //Si ya se agregó al carrito, regresamos.
        navigationController?.isNavigationBarHidden = false
        navigationController?.popViewController(animated: true)
    }
}
