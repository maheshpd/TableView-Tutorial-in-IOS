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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
