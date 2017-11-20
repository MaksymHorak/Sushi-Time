//
//  File.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum MenuItemType {

    case sushiViewController, pizzaViewController, drinksViewController
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
            
        case .sushiViewController:
            imageName = "SushiInInMenuImage"
            name  = "Суші"
            
        case .pizzaViewController:
            imageName = "PizzaInMenuImage"
            name  = "Піцца"
            
        case .drinksViewController:
            imageName = "DrinksIcon"
            name  = "Напої"
        }
    }
}

