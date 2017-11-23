//
//  SushiModel.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum SushiItemType {
    
    case hotDishes, soup, makiRolls, rolls, sets, sushi
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
            imageName = "HotDishesIcon"
            name  = "Гарячі страви"
            
        case .soup:
            imageName = "SoupsIcon"
            name  = "Супи"
            
        case .makiRolls:
            imageName = "MakiRollsIcon"
            name  = "Маки роли"
            
        case .rolls:
            imageName = "Home"
            name  = "Роли"
            
        case .sets:
            imageName = "Home"
            name  = "сети"
            
        case .sushi:
            imageName = "Home"
            name  = "Сашимi"
        }
    }
}

