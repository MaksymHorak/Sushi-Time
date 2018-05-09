////
////  CartManager.swift
////  SushiTime
////
////  Created by 1 on 09.05.2018.
////  Copyright © 2018 Self. All rights reserved.
////
//
//import UIKit
//
//class CartManager: NSObject {
//    class var sharedInstance: CartManager {
//        struct Static {
//            static var onceToken: dispatch_once_t = 0
//            static var instance: CartManager? = nil
//        }
//        dispatch_once(&Static.onceToken) {
//            Static.instance = CartManager()
//        }
//        return Static.instance!
//    }
//    
//
//}
//func addProduct(product: ProductObject) {
//    productsArray.append(product)
//}
//
//func removeProduct(product: ProductObject) -> Bool {
//    if let index = productsArray.indexOf(product) {
//        productsArray.removeAtIndex(index)
//        return true
//    }
//    
//    return false
//}
//
//
//func clearCart() {
//    productsArray.removeAll(keepCapacity: false)
//}
//
//
//
//func numberOfItemsInCart() -> Int {
//    return productsArray.count
//}
//
//
//func totalPriceInCart() -> Float {
//    var totalPrice: Float = 0
//    for product in productsArray {
//        totalPrice += product.totalPrice()
//    }
//    return totalPrice
//}
//
//
//
//func productAtIndexPath(indexPath: NSIndexPath) -> ProductObject {
//    return productsArray[indexPath.row]
//}
