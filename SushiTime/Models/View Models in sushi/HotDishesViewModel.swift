//
//  HotDishesModel2.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct HotDishesViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Hpt dish 1", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Hot dish 2", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Hot dish 3", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Hot dish 4", weight: 1, price: 8, imageName: "Home")]
}
