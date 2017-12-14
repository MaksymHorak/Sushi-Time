//
//  GenericTableViewCell.swift
//  SushiTime
//
//  Created by 1 on 12.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class GenericTableViewCell: UITableViewCell {

    @IBOutlet var cellView: UIView! {
        didSet {
            cellView.layer.cornerRadius = cellView.frame.height / 2
        }
    }
    
    @IBOutlet var genericItemImageView: UIImageView! {
        didSet {
            genericItemImageView.layer.cornerRadius = genericItemImageView.frame.height / 2
        }
    }
    
    @IBOutlet var genericItemNameLabel: UILabel!
}

// TODO: Add price and weight labels
extension GenericTableViewCell {
    func setUpWithViewModel(viewModel: OrderDetailItem) {
        genericItemImageView.image = UIImage(named: viewModel.imageName)
        genericItemNameLabel.text = viewModel.name
        //here set weight and price
    }
}
