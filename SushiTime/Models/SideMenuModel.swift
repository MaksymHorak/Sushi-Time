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
            imageName = "SideMenuMenu"
            name  = "Меню"
            
        case .shares:
            imageName = "SideMenuSale"
            name  = "Акції"
            
        case .contacts:
            imageName = "SideMenuContact"
            name  = "Контакти"
            
        case .aboutUs:
            imageName = "SideMenuAbout"
            name  = "Про нас"
            
        case .webSite:
            imageName = "SideMenuWeb"
            name  = "Наш сайт"
            
        case .howToGet:
            imageName = "SideMenuGPS"
            name  = "Як добратись"

            
            
        }
    }
}
