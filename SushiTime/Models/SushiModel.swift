//
//  SushiModel.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation
enum SushiItemType {
    
    case nigiri
}

struct SushiModel {
    
    var name: String
    var imageName: String
    var type: SushiItemType
}

extension SushiModel {
    
    init(type: SushiItemType) {
        self.type = type
        switch type {
            
        case .nigiri:
            imageName = "SushiIcon"
            name  = "Нігірі"
        }
    }
}
