//
//  CartManager.swift
//  SushiTime
//
//  Created by 1 on 13.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class CartManager: NSObject {
    static let shared = CartManager()
    
    var cartItems = [OrderDetailItem]()
    
    func calculateOveral() -> Int {
        return cartItems.compactMap({ $0.count * $0.priceName }).reduce(0,+)
    }
    
    func formText(phoneNumber: String, email: String?, name: String, street: String, house: String) -> String {
        var html = """
        <table border="1" width="30%" height="100">
        <tr>
        <td colspan="3" align="center" >Sushi Time Доставка</td>
        </tr>
        <tr>
        <td>Ім'я:</td>       <td colspan="2" >\(name)</td>
        </tr>
        <tr>
        <td>Номер телефону:</td>       <td colspan="2" >\(phoneNumber)</td>
        </tr>
        """
        if let email = email {
            html +=
            """
            <tr>
            <td>Email:</td>       <td colspan="2" >\(email)</td>
            </tr>
            """
        }
        html +=
        """
        <tr>
        <td>Вулиця:</td>       <td colspan="2" >\(street)</td>
        </tr>
        <tr>
        <td>Будинок:</td>       <td colspan="2" >\(house)</td>
        </tr>
        <tr>
        <td>Name:</td>           <td>Quantity:</td>            <td>Total:</td>
        </tr>

        """
        html = html + cartItems.compactMap({ item in
            """
            <tr>
            <td>\(item.name)</td>          <td>\(item.count)</td>           <td>\(item.count * item.priceName)</td>
            </tr>
            """
        }).reduce("", +)
        html += "<td>Total:</td>       <td ></td>   <td >\(self.calculateOveral())</td>"
        html += "</table>"
    
        return html
    }
}
