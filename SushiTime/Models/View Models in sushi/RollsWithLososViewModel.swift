//
//  RollsWithLosos.swift
//  SushiTime
//
//  Created by 1 on 02.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//


import Foundation

struct RollsWithLososViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Маки з копченим лососем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "maki"),
                                              OrderDetailItem(name: "Монреаль", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Філадельфія чіз з копченим лососем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Каліфорнія з копченим лососем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Філадельфія з копченим лососем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Каліфорнія з вершковим сиром та копченим лососем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "Home", weightName: 8, aboutName: "гункан")]
}