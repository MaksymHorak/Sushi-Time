//
//  RollsWithLosos.swift
//  SushiTime
//
//  Created by 1 on 02.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//


import Foundation

struct RollsWithLososViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Маки з копченим лососем", imageName: "MakiWithKopchenyiLosos", priceImage: "CashImage", priceName: 65, weightImage: "WeightImage", weightName: 114, aboutName: "• Копчений лосось\n• 6 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Монреаль", imageName: "Monreal", priceImage: "CashImage", priceName: 119, weightImage: "WeightImage", weightName: 210, aboutName: "• Копчений лосось\n• Ікра масаго\n• Спайс соус\n• Авокадо\n• Огірок", grLabel: "гр."),
                                              OrderDetailItem(name: "Філадельфія чіз з копченим лососем", imageName: "FiladelfiyaCheeseWithKopchenyiLosos", priceImage: "CashImage", priceName: 118, weightImage: "WeightImage", weightName: 190, aboutName: "• Копчений лосось\n• Вершковий сир\n• Сир тофу\n• 8 шт.\n• ", grLabel: "гр."),
                                              OrderDetailItem(name: "Каліфорнія з копченим лососем", imageName: "KaliforniaWithKopchenyiLosos", priceImage: "CashImage", priceName: 129, weightImage: "WeightImage", weightName: 210, aboutName: "• Копчений лосось\n• Авокадо\n• Огірок\n• 8 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Філадельфія з копченим лососем", imageName: "FiladelfiaWithKopchenyiLosos", priceImage: "CashImage", priceName: 125, weightImage: "WeightImage", weightName: 190, aboutName: "• Копчений лосось\n• Вершковий сир\n• Авокадо\n• 8 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Каліфорнія з вершковим сиром та копченим лососем", imageName: "KaliforniaWithVershkovyiSyrAndKopchenyiLosos", priceImage: "CashImage", priceName: 139, weightImage: "WeightImage", weightName: 220, aboutName: "• Копчений лосось\n• Вершковий сир\n• Огірок\n• Авокадо\n• 8 шт.", grLabel: "гр.")]
}
