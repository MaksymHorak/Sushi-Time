//
//  HotDishesTableViewCell.swift
//  SushiTime
//
//  Created by 1 on 12.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class HotDishesTableViewCell: UITableViewCell {

    @IBOutlet var cellView: UIView! {
        didSet {
            cellView.layer.cornerRadius = cellView.frame.height / 2
        }
    }
    
    @IBOutlet var hotDishesItemImageView: UIImageView! {
        didSet {
            hotDishesItemImageView.layer.cornerRadius = hotDishesItemImageView.frame.height / 2
        }
    }
    
    @IBOutlet var hotDishesItemNameLabel: UILabel!
}

// TODO: Add price and weight labels
extension HotDishesTableViewCell {
    func setUpWithViewModel(viewModel: OrderDetailItem) {
        hotDishesItemImageView.image = UIImage(named: viewModel.imageName)
        hotDishesItemNameLabel.text = viewModel.name
        //here set weight and price
    }
}
