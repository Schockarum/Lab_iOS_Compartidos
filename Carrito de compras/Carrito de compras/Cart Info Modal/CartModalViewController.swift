//
//  CartModalViewController.swift
//  Carrito de compras
//
//  Created by Luis Mauricio Esparza Vazquez on 3/26/19.
//  Copyright © 2019 Schock. All rights reserved.
//

import UIKit

class CartModalViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var productListCartControl: ItemSaleList! //Para inyectar código
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI(){
        tableView.backgroundColor = .clear
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    //Acciones
    @IBAction func dismissModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

//Implementaciones del tableview en extensión
extension CartModalViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productListCartControl.cart.productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //ref de view -> su carrito -> elemento del carrito ; (Product, Qty, Subt) -> Producto
        let product = productListCartControl.cart.productList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "modalCartCell") as! CartCell
        
        //propiedades de la celda se modifican en su clase
        cell.placeCartProduct(cartProduct: product.0, quantity: product.1, subtotal: product.2)
        
        return cell
    }
}
