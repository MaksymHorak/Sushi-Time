//
//  SushiModel.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum HotDishesItemType {
    
    case hot
}

struct HotDishesModel {
    
    var name: String
    var imageName: String
    var type: HotDishesItemType
}

extension HotDishesModel {
    
    init(type: HotDishesItemType) {
        self.type = type
        switch type {
            
        case .hot:
            imageName = "syrnyi"
            name  = "Гарячі страви"
        }
    }
}

