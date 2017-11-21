//
//  SideMenuModel.swift
//  SushiTime
//
//  Created by 1 on 04.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct SideMenuModel {
    var imageName: String
    var name: String
    var type: SlideMenuItemType
}

extension SideMenuModel {
    
    init(type: SlideMenuItemType) {
        self.type = type
        switch type {
            
        case .menu:
            imageName = "MenuIcon"
            name  = "Меню"
            
        case .shares:
            imageName = "SharesIcon"
            name  = "Акції"
            
        case .contacts:
            imageName = "PhoneIcon"
            name  = "Контакти"
            
        case .aboutUs:
            imageName = ""
            name  = "Про нас"
            
        case .webSite:
            imageName = "WebIcon"
            name  = "Наш сайт"
            
            
        }
    }
}
