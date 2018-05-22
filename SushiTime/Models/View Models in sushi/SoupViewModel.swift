//
//  SoupViewModel.swift
//  SushiTime
//
//  Created by 1 on 23.11.2017.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct SoupViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Місо суп", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Місо суп з лососем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Мусо суп з вугрем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8, aboutName: "гункан")]
}
