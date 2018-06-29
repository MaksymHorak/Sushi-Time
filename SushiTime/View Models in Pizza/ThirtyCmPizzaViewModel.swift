//
//  PizzaViewModel.swift
//  SushiTime
//
//  Created by 1 on 01.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//
//WeightImage
//CashImage
//\n•
import Foundation

struct ThirtyCmPizzaViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Піца Курка песто", imageName: "KurkaPesto", priceImage: "CashImage", priceName: 120, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир моцарела\n• Куряче філе\n• Ананас консервований\n• Соус Песто", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Леонардо", imageName: "Leonardo", priceImage: "CashImage", priceName: 99, weightImage: "PizzaSize", weightName: 30, aboutName: "• Вершковий соус\n• Сир моцарела\n• Сир горгонзола\n• Груша\n• Соус Унагі", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Капрезе", imageName: "Kapreze", priceImage: "CashImage", priceName: 140, weightImage: "PizzaSize", weightName: 30, aboutName: "• Вершковий соус\n• Сир моцарела\n• Сир моцарела салатний\n• Помедорі чері\n• Соус песто", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Маргарита", imageName: "marharita", priceImage: "CashImage", priceName: 75, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир моцарела\n• Базилік", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Папероні", imageName: "Paperoni", priceImage: "CashImage", priceName: 99, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Папероні", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Томатіна", imageName: "Tomatina", priceImage: "CashImage", priceName: 99, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Вялені томати", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Діабола", imageName: "Diabola", priceImage: "CashImage", priceName: 99, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир моцарела\n• Папероні (гостре)\n• Перець чілі", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Баварська", imageName: "Bavarska", priceImage: "CashImage", priceName: 99, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Мисливські ковбаски\n• Печериці (свіжі)\n• Соус BBQ", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Гавайська", imageName: "Havai", priceImage: "CashImage", priceName: 99, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Куряче філе\n• Ананаси", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Прошутто Крудо", imageName: "ProshuttoKrudo", priceImage: "CashImage", priceName: 110, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарелла\n• Прошутто Крудо\n• Рукола", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Капрічьоза", imageName: "kaprichoza", priceImage: "CashImage", priceName: 110, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Печериці (свіжі)\n• Артишоки\n• Помідор\n• Маслини", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Домашня", imageName: "Domashnya", priceImage: "CashImage", priceName: 120, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Печериці (свіжі)\n• Помідори\n• Оливки\n• Кукурудза\n• Цибуля марс", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Чотири сезони", imageName: "4seasons", priceImage: "CashImage", priceName: 120, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Шинка\n• Печериці (свіжі)\n• Папероні\n• Артишоки", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Цезаре", imageName: "Czezare", priceImage: "CashImage", priceName: 125, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарелла\n• Мікс салатів\n• Помідори черрі\n• Куряче філе\n• Сир пармезан\n• оус Цезаре", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Сицилія", imageName: "Sychuliya", priceImage: "CashImage", priceName: 125, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарелла\n• Прошутто Крудо\n• Рукола\n• Помідори черрі\n• Сир пармезан ", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Чотири сири", imageName: "4cheese", priceImage: "CashImage", priceName: 130, weightImage: "PizzaSize", weightName: 30, aboutName: "• Вершки\n• Сир Моцарела\n• Сир Ементаль\n• Сир Горгонзола\n• Сир Пармезан", grLabel: "см."),
                                              OrderDetailItem(name: "Піца Тонно", imageName: "Tonno", priceImage: "CashImage", priceName: 145, weightImage: "PizzaSize", weightName: 30, aboutName: "• Фірмовий соус\n• Сир Моцарела\n• Тунець(консервований)\n• Помідори Чері\n• Цибуля кримська", grLabel: "см.")]
}
