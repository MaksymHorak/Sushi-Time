//
//  WithOutAlcoholViewModel.swift
//  SushiTime
//
//  Created by 1 on 02.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//


import Foundation

struct WithOutAlcoholViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  =
        
[OrderDetailItem(name: "Кока-кола 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "•Фірмовий соус \n•Сир моцарела \n•Базилік"),
       
                                              
OrderDetailItem(name: "Фанта 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "kola"),


OrderDetailItem(name: "Спрайт 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "sprite"),


OrderDetailItem(name: "Бонаква 0,5л", imageName: "Home", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 5, aboutName: "bonakwa")]
}
