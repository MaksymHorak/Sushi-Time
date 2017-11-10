//
//  File.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum MenuItemType {

    case sushi, pizza, drinks
}

struct MenuModel {
    var name: String
    var imageName: String
    var type: MenuItemType
}

extension MenuModel {
    
    init(type: MenuItemType) {
        self.type = type
        switch type {
            
        case .sushi:
            imageName = "SushiInInMenuImage"
            name  = "Суші"
            
        case .pizza:
            imageName = "PizzaInMenuImage"
            name  = "Піцца"
            
        case .drinks:
            imageName = "DrinksIcon"
            name  = "Напої"
        }
    }
}

