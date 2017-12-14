//
//  OrderDetailViewModel.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import Foundation

protocol OrderDetailProvider {
    var itemsToDisplay: [OrderDetailItem] { get }
}

