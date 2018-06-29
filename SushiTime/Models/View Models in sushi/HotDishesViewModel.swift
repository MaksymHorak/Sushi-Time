//
//  HotDishesModel2.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct HotDishesViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Удон з грибами шиітаке", imageName: "UdonWithShytiake", priceImage: "CashImage", priceName: 50, weightImage: "WeightImage", weightName: 190, aboutName: "• Болгарський перець \n• Гриби шиітаке \n• Локшина удон\n• Соус Теріякі\n• Морква\n• Цибуля\n• Кунжут", grLabel: "гр."),
                                              OrderDetailItem(name: "Удон з куркою та грибами", imageName: "UdonWithChicken", priceImage: "CashImage", priceName: 74,weightImage: "WeightImage", weightName: 220, aboutName: "• Болгарський перець \n• Гриби шиітаке \n• Локшина удон\n• Соус Теріякі\n• Морква\n• Цибуля\n• Курка\n• Кунжут", grLabel: "гр.")]
    
    
}
