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
        
        navigationItem.rightBarButtonItem = editButtonItem
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
    
    //Multiple Selection
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let productLine = productsLine[section]
        return productLine.name
    }
    
    //Delete Row
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // delete the product from the product Line's product array
            
            let productLine = productsLine[indexPath.section]
            productLine.product.remove(at: indexPath.row)
            
            //update the table view with new data
//            tableView.reloadData()
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    //Moving Cells
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let productToMove = productsLine[sourceIndexPath.section].product[sourceIndexPath.row]
        
        //move productToMove to destination products
        productsLine[destinationIndexPath.section].product.insert(productToMove, at: destinationIndexPath.row)
        
        //delete the productToMove from the source products
        productsLine[sourceIndexPath.section].product.remove(at: sourceIndexPath.row)
    }
    
}
