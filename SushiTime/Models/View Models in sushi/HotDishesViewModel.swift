//
//  HotDishesModel2.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct HotDishesViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Удон з грибами шиітаке", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Удон з овочами", imageName: "Home", priceImage: "CashImage", priceName: 5,weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Удон з куркою та грибами", imageName: "Home", priceImage: "CashImage", priceName: 5,weightImage: "WeightImage", weightName: 5, aboutName: "гункан")]
    
    
}
