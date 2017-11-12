//
//  MakiRollsModel.swift
//  SushiTime
//
//  Created by 1 on 12.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

enum MakiRollsItemType {
    
    case second
}

struct MakiRollsModel {
    
    var name: String
    var imageName: String
    var type: MakiRollsItemType
}

extension MakiRollsModel {
    
    init(type: MakiRollsItemType) {
        self.type = type
        switch type {
            
        case .second:
            imageName = "syrnyi"
            name  = "Гарячі страви"
        }
    }
}
