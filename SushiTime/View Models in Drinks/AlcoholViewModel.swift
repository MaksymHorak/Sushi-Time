//
//  AlcoholViewModel.swift
//  SushiTime
//
//  Created by 1 on 02.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//


import Foundation

struct AlcoholViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Роберт Домс Бельгійський 0,5л", imageName: "Robert-Doms_Belg", priceImage: "CashImage", priceName: 30, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Роберт Домс Мюнхенський 0,5л", imageName: "RobertDomsMunhen", priceImage: "CashImage", priceName: 30, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Роберт Домс Віденський 0,5л", imageName: "RobertDomsViden", priceImage: "CashImage", priceName: 30, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Роберт Домс Золотий Ель 0,5л", imageName: "RobertDomsEl", priceImage: "CashImage", priceName: 30, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Кроненбург Бланк 0,5л", imageName: "kronenbourgBlanc", priceImage: "CashImage", priceName: 40, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Fragolino Fiorelli", imageName: "Fragolino", priceImage: "CashImage", priceName: 160, weightImage: "WeightImage", weightName: 750, aboutName: "", grLabel: "гр.")]
}
