//
//  File.swift
//  SushiTime
//
//  Created by 1 on 14.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum RollsItemType {
    
    case second
}

struct RollsModel {
    
    var name: String
    var imageName: String
    var type: RollsItemType
}

extension RollsModel {
    
    init(type: RollsItemType) {
        self.type = type
        switch type {
            
        case .second:
            imageName = "syrnyi"
            name  = "Гарячі страви"
        }
    }
}
