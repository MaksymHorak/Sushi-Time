//
//  AttachmentsModel.swift
//  SushiTime
//
//  Created by 1 on 11.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import Foundation

enum AttachmentsItemType {
    
    case attachmentsForPizza, attachmentsForSushi
}

struct AttachmentsModel {
    
    var name: String
    var imageName: String
    var type: AttachmentsItemType
}

extension AttachmentsModel {
    
    init(type: AttachmentsItemType) {
        self.type = type
        switch type {
            
        case .attachmentsForPizza:
            imageName = "HotDishesIcon"
            name  = "Додатки до піци"
        case .attachmentsForSushi:
            imageName = "AttachmentsSushi"
            name  = "Додатки до суші"

            
        }
    }
}
