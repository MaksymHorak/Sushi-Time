//
//  Sashymi.swift
//  SushiTime
//
//  Created by 1 on 14.12.2017.
//  Copyright © 2017 Self. All rights reserved.
//


import Foundation

struct SushiViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Гункан з салатом чука вакаме", imageName: "HunkanWithSalatChuka", priceImage: "CashImage", priceName: 31, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Гункан спайс з крабовим міксом", imageName: "HunkanSpiceWithCrabs", priceImage: "CashImage", priceName: 35, weightImage: "WeightImage", weightName: 50, aboutName: "• Крабовий мікс \n• Соус спайс", grLabel: "гр."),
                                              OrderDetailItem(name: "Гункан з ікрою масаго", imageName: "HunkanMasago", priceImage: "CashImage", priceName: 36, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Гункан спайс з вугрем", imageName: "HunkanWithVuhor", priceImage: "CashImage", priceName: 48, weightImage: "WeightImage", weightName: 50, aboutName: "• Копчений вугор \n• Соус спайс", grLabel: "гр."),
                                              OrderDetailItem(name: "Гункан спайс з лососем", imageName: "HunkanSpiceWithLosos", priceImage: "CashImage", priceName: 44, weightImage: "WeightImage", weightName: 50, aboutName: "• Лосось \n• Соус спайс", grLabel: "гр."),
                                              OrderDetailItem(name: "Гункан спайс з тунцем", imageName: "HunkanWithTunez", priceImage: "CashImage", priceName: 44, weightImage: "WeightImage", weightName: 50, aboutName: "• Тунець \n• Соус спайс", grLabel: "гр."),
                                              OrderDetailItem(name: "Нігірі з лососем", imageName: "NihiriWithLosos", priceImage: "CashImage", priceName: 36, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Нігірі з тунцем", imageName: "NihiriWithTunez", priceImage: "CashImage", priceName: 36, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Нігірі з вугрем", imageName: "NihiriWithVuhor", priceImage: "CashImage", priceName: 46, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр.")]
}
