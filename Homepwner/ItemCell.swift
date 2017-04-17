//
//  ItemCell.swift
//  Homepwner
//
//  Created by Daniel Roberts on 17/04/17.
//  Copyright © 2017 Duro. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumber: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    func updateLabels() {
        let bodyFont = UIFont.preferredFont(forTextStyle: .body)
        nameLabel.font = bodyFont
        valueLabel.font = bodyFont
        let captionFont = UIFont.preferredFont(forTextStyle: .caption1)
        serialNumber.font = captionFont
    }
}
