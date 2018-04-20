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
    
    @IBOutlet var priceItemImageView: UIImageView!
    @IBOutlet var priceItemLabelView: UILabel!
    
    
    @IBOutlet var weightItemImageView: UIImageView!
    @IBOutlet var weightItemLabelView: UILabel!

    
    open override func setSelected(_ selected: Bool, animated: Bool){
        
        super.setSelected(selected, animated: animated)
        cellView.backgroundColor = selected ? .gray : .pizzaGray


    }
}




// TODO: Add price and weight labels
extension GenericTableViewCell {
    func setUpWithViewModel(viewModel: OrderDetailItem) {
        genericItemImageView.image = UIImage(named: viewModel.imageName)
        genericItemNameLabel.text = viewModel.name
        
        priceItemImageView.image = UIImage(named: viewModel.priceImage)
        //priceItemLabelView.text = viewModel.priceName
        
        
    //    Int(priceItemLabelView.text)!
//        priceItemLabelView.text: Int
        //\("5")
        
        weightItemImageView.image = UIImage(named: viewModel.weightImage)
      //  weightItemLabelView.text = viewModel.weightName
        
        
       // Int(weightItemLabelView.text)!
      //  weightItemLabelView.text = viewModel.weightName
        //here set weight and price
    }
}
