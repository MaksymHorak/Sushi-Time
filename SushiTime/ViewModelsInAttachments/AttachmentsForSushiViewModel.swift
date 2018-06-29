//
//  AttachmentsForSushi.swift
//  SushiTime
//
//  Created by 1 on 26.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import Foundation

struct AttachmentsForSushiViewModel: OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem]  = [OrderDetailItem(name: "Імбир", imageName: "Imbir", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 30, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Васабі", imageName: "Vasabi", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 15, aboutName: "", grLabel: "гр."),
                                              OrderDetailItem(name: "Соєвий соус", imageName: "Soevyi", priceImage: "CashImage", priceName: 5, weightImage: "WeightImage", weightName: 45, aboutName: "", grLabel: "гр.")]
}
