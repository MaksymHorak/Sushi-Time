//
//  PizzaModel.swift
//  SushiTime
//
//  Created by 1 on 10.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum PizzaItemType {
    
    case first
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
            
        case .first:
            imageName = "syrnyi"
            name  = "Сирний рол"
        }
    }
}
