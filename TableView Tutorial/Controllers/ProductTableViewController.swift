//
//  ProductTableViewController.swift
//  TableView Tutorial
//
//  Created by Mahesh Prasad on 18/07/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    var productsLine:[ProductLine] = ProductLine.getProductLines()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Apple Store"
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    //MARK: - UITableViewDataSource
    
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return productsLine.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsLine[section].product.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as? ProductTableViewCell
        let productLine = productsLine[indexPath.section]
        let products = productLine.product
        let product = products[indexPath.row]
        cell?.product = product
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let productLine = productsLine[section]
        return productLine.name
    }
    
}
