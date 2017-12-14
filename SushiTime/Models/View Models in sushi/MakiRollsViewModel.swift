//
//  MakiRollsViewModel.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct MakiRollsViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Maki roll 1", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Maki Roll 2", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "HMaki Roll 3", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Maki Roll 4", weight: 1, price: 8, imageName: "Home")]
}
