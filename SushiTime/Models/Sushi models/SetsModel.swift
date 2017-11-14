//
//  SetsModel.swift
//  SushiTime
//
//  Created by 1 on 14.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum SetsItemType {
    
    case second
}

struct SetsModel {
    
    var name: String
    var imageName: String
    var type: SetsItemType
}

extension SetsModel {
    
    init(type: SetsItemType) {
        self.type = type
        switch type {
            
        case .second:
            imageName = "syrnyi"
            name  = "Гарячі страви"
        }
    }
}
