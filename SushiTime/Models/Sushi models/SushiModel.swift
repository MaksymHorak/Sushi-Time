//
//  SushiModel.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum SushiItemType {
    
    case hotDishes, soups, makiRolls
}

struct SushiModel {
    
    var name: String
    var imageName: String
    var type: SushiItemType
}

extension SushiModel {
    
    init(type: SushiItemType) {
        self.type = type
        switch type {
            
        case .hotDishes:
            imageName = "syrnyi"
            name  = "Гарячі страви"
            
        case .soups:
            imageName = "vegan"
            name  = "Супи"
            
        case .makiRolls:
            imageName = "futomaki"
            name  = "Маки роли"
        }
    }
}
