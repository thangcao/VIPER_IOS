//
//  ItemSearchCell.swift
//  viper
//
//  Created by Cao Thắng on 6/19/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

class ItemSearchCell: UITableViewCell {
    
    var store: Store? {
        didSet {
            if let store = store {
                title.text = store.title
            }
        }
    }
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
