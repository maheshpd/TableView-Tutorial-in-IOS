//
//  ProductTableViewCell.swift
//  TableView Tutorial
//
//  Created by Mahesh Prasad on 18/07/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productTitleLbl: UILabel!
    
    @IBOutlet weak var productDescriptionLbl: UILabel!
    
    var product: Product? {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        productImageView.image = product?.image
        productTitleLbl.text = product?.title
        productDescriptionLbl.text = product?.description
    }
    
}
