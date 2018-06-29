//
//  WithOutAlcoholViewModel.swift
//  SushiTime
//
//  Created by 1 on 02.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//


import Foundation

struct WithOutAlcoholViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Кока-кола 0,5л", imageName: "Cola", priceImage: "CashImage", priceName: 25, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Фанта 0,5л", imageName: "Fanta", priceImage: "CashImage", priceName: 25, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Спрайт 0,5л", imageName: "Sprite", priceImage: "CashImage", priceName: 25, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Моршинська газ. 0,5л", imageName: "MorshunskaGaz", priceImage: "CashImage", priceName: 35, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Моршинська негаз. 0,5л", imageName: "MorshunskaNeGaz", priceImage: "CashImage", priceName: 35, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Карлсберг Безалкогольний 0,5л", imageName: "CarlsbergWithOutAlc", priceImage: "CashImage", priceName: 35, weightImage: "WeightImage", weightName: 500, aboutName: "", grLabel: "гр.")]
}
