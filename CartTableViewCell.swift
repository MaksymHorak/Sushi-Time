//
//  CartTableViewCell.swift
//  SushiTime
//
//  Created by 1 on 13.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

protocol CartTableViewCellDelegate {
    func didPressMinus(cell: CartTableViewCell)
    func didPressPlus(cell: CartTableViewCell)
}

class CartTableViewCell: GenericTableViewCell {

    var delegate: CartTableViewCellDelegate?
   
    @IBOutlet weak var countLbl: UILabel!
    
    
    @IBAction func didPressMinus(_ sender: Any) {
        delegate?.didPressMinus(cell: self)
    }
    
    
    @IBAction func didPressPlus(_ sender: Any) {
        delegate?.didPressPlus(cell: self)
    }
    
}


