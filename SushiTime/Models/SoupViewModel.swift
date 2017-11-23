//
//  SoupViewModel.swift
//  SushiTime
//
//  Created by 1 on 23.11.2017.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct SoupViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "soup 1", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "soup 2", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "soup 3", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "soup 4", weight: 1, price: 8, imageName: "Home")]
}
