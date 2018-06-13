//
//  File.swift
//  SushiTime
//
//  Created by 1 on 14.12.2017.
//  Copyright © 2017 Self. All rights reserved.
//


import Foundation

struct SetsViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Набір Макі", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Набір Філадельфія", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Набір Макі плюс", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Набір Мікс", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан"),
                                              OrderDetailItem(name: "Набір Якудза", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8, aboutName: "гункан")]
}
