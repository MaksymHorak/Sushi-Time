//
//  AlcoholViewModel.swift
//  SushiTime
//
//  Created by 1 on 02.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//


import Foundation

struct AlcoholViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Роберт Домс Бельгійський 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Роберт Домс Мюнхенський 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Роберт Домс Віденський 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Карлсберг 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Карлсберг Безалкогольний 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Кроненбург 1664 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Кроненсбург Бланк 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан"),
                                              OrderDetailItem(name: "Fragolini Fiorelli", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "гункан")]
}
