//
//  MakiRollsViewModel.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct MakiRollsViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Макі з огірком", imageName: "MakiWithOhirok", priceImage: "CashImage", priceName: 39, weightImage: "WeightImage", weightName: 114, aboutName: "• Огірок\n• 6 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Макі з авокадо", imageName: "MakiWithAvokado", priceImage: "CashImage", priceName: 45, weightImage: "WeightImage", weightName: 114, aboutName: "• Авокадо\n• 6 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Макі з авокадо та вершковим сиром", imageName: "MakiWithOhirokAndVershkovuySyr", priceImage: "CashImage", priceName: 49, weightImage: "WeightImage", weightName: 140, aboutName: "• Вершковий сир\n• Авокадо\n• 6 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Макі з лососем", imageName: "MakiWithLosos", priceImage: "CashImage", priceName: 55, weightImage: "WeightImage", weightName: 114, aboutName: "• Лосось\n• 6 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Макі з тунцем", imageName: "MakiWithTunez", priceImage: "CashImage", priceName: 59, weightImage: "WeightImage", weightName: 114, aboutName: "• Тунець\n• 6 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Макі з вугрем", imageName: "MakiWithVuhor", priceImage: "CashImage", priceName: 77, weightImage: "WeightImage", weightName: 114, aboutName: "• Копчений вугор\n• Соус унагі\n• 6 шт.", grLabel: "гр.")]
}
