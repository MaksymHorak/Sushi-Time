//
//  File.swift
//  SushiTime
//
//  Created by 1 on 14.12.2017.
//  Copyright © 2017 Self. All rights reserved.
//


import Foundation

struct SetsViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Набір Макі", imageName: "MakiSet", priceImage: "CashImage", priceName: 210, weightImage: "WeightImage", weightName: 450, aboutName: "• Макі з копченим вугрем 6 шт.\n• Макі з лососем 6 шт.\n• Макі з авокадо 6 шт. Макі з огірком 6 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Набір Філадельфія", imageName: "FiladelfiaSet", priceImage: "CashImage", priceName: 369, weightImage: "WeightImage", weightName: 620, aboutName: "• Філадельфія 8 шт.\n• Філадельфія з вугрем 8 шт.\n• Філадельфія грін 8 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Набір Макі плюс", imageName: "MakiSetPlus", priceImage: "CashImage", priceName: 424, weightImage: "WeightImage", weightName: 900, aboutName: "• Макі з лососем\n• Макі з вугрем\n• Макі з копченим лососем\n• Макі з тунцем\n• Макі з огірком\n• Макі з авокадо\n• Футомакі з лососем та авокадо\n• 46 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Набір Мікс", imageName: "MixSet", priceImage: "CashImage", priceName: 446, weightImage: "WeightImage", weightName: 842, aboutName: "• Філадельфія 8 шт.\n• Футомакі 8 шт.\n• Каліфорнія фреш 6 шт.\n• Боніто 8 шт.", grLabel: "гр."),
                                              OrderDetailItem(name: "Набір Якудза", imageName: "YakudzaSet", priceImage: "CashImage", priceName: 870, weightImage: "WeightImage", weightName: 1520, aboutName: "• Зелений дракон\n• Філадельфія\n• Панда\n• Філадельфія з вугрем\n• Сирний рол\n• Філадельфія з копченим лососем та вершковим сиром\n• Чікен чіз\n• Каліфорнія фреш \n• 62 шт.", grLabel: "гр.")]
}
