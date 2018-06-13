//
//  OrderDetailItem.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct OrderDetailItem {
    var name: String
    var imageName: String
    
    var priceImage: String
    var priceName: Int
    
    var weightImage: String
    var weightName: Int
    
    var aboutName: String

    var count: Int = 1
    
    init(name: String, imageName: String, priceImage: String, priceName: Int, weightImage: String, weightName: Int, aboutName: String) {
        self.name = name
        self.imageName = imageName
        self.priceName = priceName
        self.priceImage = priceImage
        self.weightName = weightName
        self.weightImage = weightImage
        self.aboutName = aboutName
        self.count = 1
    }
}


extension OrderDetailItem: Equatable {
    public static func == (lhs: OrderDetailItem, rhs: OrderDetailItem) -> Bool {
        return lhs.name == rhs.name
    }

}
