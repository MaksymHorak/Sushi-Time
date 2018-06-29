//
//  SoupViewModel.swift
//  SushiTime
//
//  Created by 1 on 23.11.2017.
//  Copyright © 2017 Self. All rights reserved.
//\n•

import Foundation

struct SoupViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Місо суп", imageName: "MisoSoup", priceImage: "CashImage", priceName: 45, weightImage: "WeightImage", weightName: 220, aboutName: "• Гриби шиітаке\n• Зелена цибуля\n• Сир тофу\n• Кунжут", grLabel: "гр."),
                                              OrderDetailItem(name: "Місо суп з лососем", imageName: "MisoSoupWithLolos", priceImage: "CashImage", priceName: 55, weightImage: "WeightImage", weightName: 220, aboutName: "• Гриби шиітаке\n• Зелена цибуля\n• Сир тофу\n• Кунжут\n• Лосось", grLabel: "гр."),
                                              OrderDetailItem(name: "Місо суп з вугрем", imageName: "MisoSoupWithVuhor", priceImage: "CashImage", priceName: 75, weightImage: "WeightImage", weightName: 220, aboutName: "• Гриби шиітаке\n• Зелена цибуля\n• Сир тофу\n• Кунжут\n• Вугор", grLabel: "гр.")]
}



