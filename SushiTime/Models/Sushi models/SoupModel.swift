//
//  SoupModel.swift
//  SushiTime
//
//  Created by 1 on 12.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum SoupItemType {
    
    case first
}

struct SoupModel {
    
    var name: String
    var imageName: String
    var type: SoupItemType
}

extension SoupModel {
    
    init(type: SoupItemType) {
        self.type = type
        switch type {
            
        case .first:
            imageName = "syrnyi"
            name  = "Гарячі страви"
        }
    }
}
