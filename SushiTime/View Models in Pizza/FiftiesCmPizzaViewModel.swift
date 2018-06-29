//
//  File.swift
//  SushiTime
//
//  Created by 1 on 22.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import Foundation

struct FiftiesCmPizzaViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Піца Курка песто", imageName: "KurkaPesto", priceImage: "CashImage", priceName: 240, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир моцарела\n• Куряче філе\n• Ананас консервований\n• Соус Песто", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Леонардо", imageName: "Leonardo", priceImage: "CashImage", priceName: 199, weightImage: "PizzaSize", weightName: 50, aboutName: "• Вершковий соус\n• Сир моцарела\n• Сир горгонзола\n• Груша\n• Соус Унагі", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Капрезе", imageName: "Kapreze", priceImage: "CashImage", priceName: 280, weightImage: "PizzaSize", weightName: 50, aboutName: "• Вершковий соус\n• Сир моцарела\n• Сир моцарела салатний\n• Помедорі чері\n• Соус песто", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Маргарита", imageName: "marharita", priceImage: "CashImage", priceName: 150, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир моцарела\n• Базилік", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Папероні", imageName: "Paperoni", priceImage: "CashImage", priceName: 199, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Папероні", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Томатіна", imageName: "Tomatina", priceImage: "CashImage", priceName: 199, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Вялені томати", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Діабола", imageName: "Diabola", priceImage: "CashImage", priceName: 199, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир моцарела\n• Папероні (гостре)\n• Перець чілі", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Баварська", imageName: "Bavarska", priceImage: "CashImage", priceName: 199, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Мисливські ковбаски\n• Печериці (свіжі)\n• Соус BBQ", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Гавайська", imageName: "Havai", priceImage: "CashImage", priceName: 199, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Куряче філе\n• Ананаси", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Прошутто Крудо", imageName: "ProshuttoKrudo", priceImage: "CashImage", priceName: 220, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарелла\n• Прошутто Крудо\n• Рукола", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Капрічьоза", imageName: "kaprichoza", priceImage: "CashImage", priceName: 220, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Печериці (свіжі)\n• Артишоки\n• Помідор\n• Маслини", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Домашня", imageName: "Domashnya", priceImage: "CashImage", priceName: 240, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Печериці (свіжі)\n• Помідори\n• Оливки\n• Кукурудза\n• Цибуля марс", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Чотири сезони", imageName: "4seasons", priceImage: "CashImage", priceName: 240, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Печериці (свіжі)\n• Папероні\n• Артишоки", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Цезаре", imageName: "Czezare", priceImage: "CashImage", priceName: 250, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарелла\n• Мікс салатів\n• Помідори черрі\n• Куряче філе\n• Сир пармезан\n• оус Цезаре", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Сицилія", imageName: "Sychuliya", priceImage: "CashImage", priceName: 250, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарелла\n• Прошутто Крудо\n• Рукола\n• Помідори черрі\n• Сир пармезан ", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Чотири сири", imageName: "4cheese", priceImage: "CashImage", priceName: 260, weightImage: "PizzaSize", weightName: 50, aboutName: "• Вершки\n• Сир Моцарела\n• Сир Ементаль\n• Сир Горгонзола\n• Сир Пармезан", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Тонно", imageName: "Tonno", priceImage: "CashImage", priceName: 290, weightImage: "PizzaSize", weightName: 50, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Тунець(консервований)\n• Помідори Чері\n• Цибуля кримська", grLabel: "см.")]
}
