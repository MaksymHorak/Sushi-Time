//
//  SushiModel.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum SushiItemType {
    
    case hotDishes, soup, makiRolls, rolls, sets, sushi, rollsWithLosos
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
            imageName = "UdonWithChicken"
            name  = "Гарячі страви"
            
        case .soup:
            imageName = "MisoSoupWithVuhor"
            name  = "Супи"
            
        case .makiRolls:
            imageName = "MakiWithVuhor"
            name  = "Макi роли"
            
        case .rolls:
            imageName = "BlackSamuray"
            name  = "Роли"
            
        case .sets:
            imageName = "YakudzaSet"
            name  = "Набори"
            
        case .sushi:
            imageName = "NihiriWithVuhor"
            name  = "Суші"
            
        case .rollsWithLosos:
            imageName = "FiladelfiyaCheeseWithKopchenyiLosos"
            name  = "Роли з копченим лососем"
        }
    }
}

