//
//  MakiRollsViewModel.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct MakiRollsViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Макі з огірком", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8),
                                              OrderDetailItem(name: "Макі з авокадо", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8),
                                              OrderDetailItem(name: "Макі з авокадо та вершковим сиром", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8),
                                              OrderDetailItem(name: "Макі з лососем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8),
                                              OrderDetailItem(name: "Макі з тунцем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8),
                                              OrderDetailItem(name: "Макі з вугрем", imageName: "Home", priceImage: "CashImage", priceName: 1, weightImage: "WeightImage", weightName: 8)]
}
