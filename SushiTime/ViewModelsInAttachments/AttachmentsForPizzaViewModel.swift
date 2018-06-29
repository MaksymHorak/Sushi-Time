//
//  AttachmentsForPizza.swift
//  SushiTime
//
//  Created by 1 on 26.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import Foundation

struct AttachmentsForPizzaViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Цибуля Марс", imageName: "LukMars", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Додаток Печериці свіжі", imageName: "Pecheryzi", priceImage: "CashImage", priceName: 10, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Ананас консервований", imageName: "Ananas", priceImage: "CashImage", priceName: 16, weightImage: "WeightImage", weightName: 65, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Кукурудза консервована", imageName: "Kukurudza", priceImage: "CashImage", priceName: 10, weightImage: "WeightImage", weightName: 20, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Сир Горгорзола", imageName: "syrGorgonzola", priceImage: "CashImage", priceName: 15, weightImage: "WeightImage", weightName: 30, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Сир Моцарела", imageName: "Home", priceImage: "CashImage", priceName: 24, weightImage: "WeightImage", weightName: 110, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Сир Пармезан", imageName: "Parmizan", priceImage: "CashImage", priceName: 12, weightImage: "WeightImage", weightName: 10, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Оливки", imageName: "olives", priceImage: "CashImage", priceName: 6, weightImage: "WeightImage", weightName: 15, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Маслини", imageName: "manzanilla", priceImage: "CashImage", priceName: 6, weightImage: "WeightImage", weightName: 15, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Перець Чілі", imageName: "Home", priceImage: "CashImage", priceName: 10, weightImage: "WeightImage", weightName: 10, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Помідор", imageName: "Pomidor", priceImage: "CashImage", priceName: 10, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Помідор Черрі", imageName: "PomidorCherry", priceImage: "CashImage", priceName: 16, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Шинка", imageName: "Shunka", priceImage: "CashImage", priceName: 20, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Папероні Піканте", imageName: "Home", priceImage: "CashImage", priceName: 30, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Папероні", imageName: "Home", priceImage: "CashImage", priceName: 28, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Куряче філе", imageName: "KuryacheFile", priceImage: "CashImage", priceName: 14, weightImage: "WeightImage", weightName: 60, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Мисливські ковбаски", imageName: "OhotnichiKolbaski", priceImage: "CashImage", priceName: 15, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Артишоки мариновані", imageName: "Home", priceImage: "CashImage", priceName: 35, weightImage: "WeightImage", weightName: 60, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Тунець консервований", imageName: "RIO", priceImage: "CashImage", priceName: 50, weightImage: "WeightImage", weightName: 50, aboutName: "", grLabel: "гр.")]
}
