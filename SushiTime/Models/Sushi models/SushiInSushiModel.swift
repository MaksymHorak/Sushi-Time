//
//  SushiInSushiModel.swift
//  SushiTime
//
//  Created by 1 on 20.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum SushiInSushiItemType {
    
    case second
}

struct SushiInSushiModel {
    
    var name: String
    var imageName: String
    var type: SushiInSushiItemType
}

extension SushiInSushiModel {
    
    init(type: SushiInSushiItemType) {
        self.type = type
        switch type {
            
        case .second:
            imageName = "syrnyi"
            name  = "Гарячі страви"
        }
    }
}
