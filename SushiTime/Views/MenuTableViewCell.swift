//
//  MenuTableViewCell.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet var cellView: UIView!
    
    @IBOutlet var menuItemImageView: UIImageView!
    
    @IBOutlet var menuItemNameLable: UILabel!
    
    
    
    open override func setSelected(_ selected: Bool, animated: Bool){
        
        super.setSelected(selected, animated: animated)
        cellView.backgroundColor = selected ? .gray : .sushiGray
        
        
    }
    
}
