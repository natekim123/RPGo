//
//  ItemTableViewCell.swift
//  RPGo
//
//  Created by Felix Plajer on 12/10/17.
//  Copyright © 2017 Felix Plajer. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    var player : Player?
    
    var item: Item {
        didSet {
            self.imageView!.image = item.image
            switch (item.type) {
            case .Attack:
                self.textLabel?.text = "Sword"
                self.detailTextLabel?.text = "+\(item.value) attack"
            case .Defense:
                self.textLabel?.text = "Shield"
                self.detailTextLabel?.text = "+\(item.value) defense"
            case .Health:
                self.textLabel?.text = "Potion"
                self.detailTextLabel?.text = "+\(item.value) health"
            }

            if item.equipped {
                self.accessoryType = .checkmark
                self.isSelected = true
            } else {
                self.accessoryType = UITableViewCellAccessoryType.none
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.item = Item.init(image: "treebig", type: .Defense, value: 5)
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
