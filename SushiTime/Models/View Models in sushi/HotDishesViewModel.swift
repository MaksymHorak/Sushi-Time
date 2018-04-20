//
//  HotDishesModel2.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct HotDishesViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "HotDish", imageName: "Home", priceImage: "Home", priceName: 5, weightImage: "Home", weightName: 5)]
}
