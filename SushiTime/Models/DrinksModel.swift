//
//  DrinksModel.swift
//  SushiTime
//
//  Created by 1 on 29.04.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import Foundation

enum DrinksItemType {
    
    case alcohol, withOutAlcohol
}

struct DrinksModel {
    
    var name: String
    var imageName: String
    var type: DrinksItemType
}

extension DrinksModel {
    
    init(type: DrinksItemType) {
        self.type = type
        switch type {
            
        case .alcohol:
            imageName = "Fragolino"
            name  = "Алкогольні напої"
            
        case .withOutAlcohol:
            imageName = "ColaFantaSprite"
            name  = "Безалкогольні напої"

        }
    }
}



