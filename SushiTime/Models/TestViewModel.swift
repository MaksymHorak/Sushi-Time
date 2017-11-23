//
//  TestViewModel.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

struct TestViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Tes 1", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Test 2", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Test 3", weight: 1, price: 8, imageName: "Home"), OrderDetailItem(name: "Test 4", weight: 1, price: 8, imageName: "Home")]
}
