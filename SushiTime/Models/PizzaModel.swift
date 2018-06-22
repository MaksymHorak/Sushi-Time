//
//  PizzaModel.swift
//  SushiTime
//
//  Created by 1 on 10.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum PizzaItemType {
    
    case thirtyCmPizza, fiftiesCmPizza
}

struct PizzaModel {
    
    var name: String
    var imageName: String
    var type: PizzaItemType
}

extension PizzaModel {
    
    init(type: PizzaItemType) {
        self.type = type
        switch type {
            
        case .thirtyCmPizza:
            imageName = "syrnyi"
            name  = "Піца 30 см."
            
        case .fiftiesCmPizza:
            imageName = "syrnyi"
            name  = "Піца 50 см."
        }
    }
}
