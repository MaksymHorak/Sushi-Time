//
//  Sashymi.swift
//  SushiTime
//
//  Created by 1 on 14.12.2017.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct SushiViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Гункан з салатом чука вакаме", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Гункан спайс з крабовим міксом", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Гункан з ікрою масаго", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Гункан спайс з вугрем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Гункан спайс з лососем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Гункан спайс з тунцем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Нугірі з лососем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Нігірі з тунцем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8),
                                              OrderDetailItem(name: "Нігірі з вугрем", imageName: "Home", priceImage: "Home", priceName: 1, weightImage: "Home", weightName: 8)]
}
