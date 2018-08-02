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
    
    func formTextPickup(name: String, telephone: String, email: String?, time: String?, persons: String?, sticks: String?, pay: String?) -> String {
        
        var html = """
        <html><table border="1" width="400">
        <tr><td colspan="3" align="center">Sushi Time Самовивіз</td></tr>
        <tr><td>Ім'я:</td><td colspan="2">\(name)</td></tr>
        <tr><td>Номер телефону:</td><td colspan="2" >\(telephone)</td></tr>
        """
        if let email = email {
            html +=
            """
            <tr><td>Email:</td><td colspan="2">\(email)</td></tr>
            """
        }
        
        html +=
        """
        <tr><td colspan="3" align="center">Час самовивозу</td></tr>
        """
        
        if let time = time {
            html +=
            """
            <tr><td>Кількість персон:</td><td colspan="2">\(time)</td></tr>
            """
        }
        
        html +=
        """
        <tr><td colspan="3" align="center">Уточнення до замовлення</td></tr>
        """
        
        if let persons = persons {
            html +=
            """
            <tr><td>Кількість персон:</td><td colspan="2">\(persons)</td></tr>
            """
        }
        if let sticks = sticks {
            html +=
            """
            <tr><td>Палочки:</td><td colspan="2">\(sticks)</td></tr>
            """
        }
        if let pay = pay {
            html +=
            """
            <tr><td>Оплата:</td><td colspan="2">\(pay)</td></tr>
            """
        }
        html += formOrderData()
        html += "</table></html>"
        return html
    }
    
    func formText(phoneNumber: String, email: String?, name: String, street: String, house: String, enter: String?, level: String?, appartments: String?, persons: String?, sticks: String?, pay: String?) -> String {
        var html = """
        <html><table border="1" width="400">
        tr:nth-child(even) {background-color: #f2f2f2;}
        <tr><td colspan="3" align="center">Sushi Time Доставка</td></tr>
        <tr><td>Ім'я:</td><td colspan="2">\(name)</td></tr>
        <tr><td>Номер телефону:</td><td colspan="2" >\(phoneNumber)</td></tr>
        """
        if let email = email {
            html +=
            """
            <tr><td>Email:</td><td colspan="2">\(email)</td></tr>
            """
        }
        html +=
            
        """
        <tr><td colspan="3" align="center">Адреса доставки</td></tr>
        <tr><td>Вулиця:</td><td colspan="2">\(street)</td></tr>
        <tr><td>Будинок:</td><td colspan="2">\(house)</td></tr><tr>
        """
        if let enter = enter {
            html +=
            """
            <tr><td>Під'їзд:</td><td colspan="2">\(enter)</td></tr>
            """
        }

        if let appartments = appartments {
            html +=
            """
            <tr><td>Квартира:</td><td colspan="2">\(appartments)</td></tr>
            """
        }
        if let level = level {
            html +=
            """
            <tr><td>Поверх:</td><td colspan="2">\(level)</td></tr>
            """
        }
        html +=
        """
        <tr><td colspan="3" align="center">Уточнення до замовлення</td></tr>
        """
        
        if let persons = persons {
            html +=
            """
            <tr><td>Кількість персон:</td><td colspan="2">\(persons)</td></tr>
            """
        }
        if let sticks = sticks {
            html +=
            """
            <tr><td>Палочки:</td><td colspan="2">\(sticks)</td></tr>
            """
        }
        if let pay = pay {
            html +=
            """
            <tr><td>Оплата:</td><td colspan="2">\(pay)</td></tr>
            """
        }
        html += formOrderData()
        html += "</table></html>"
        return html
    }
    
    func formOrderData() -> String {
        var html =
        """
        <td>Замовлення:</td><td>Кількість:</td><td>Ціна:</td></tr>
        """
        html = html + cartItems.compactMap({ item in
            """
            <tr><td>\(item.name)</td><td>\(item.count)</td><td>\(item.count * item.priceName) грн.</td></tr>
            """
        }).reduce("", +)
        html +=
        """
        <td colspan="2" align="center">Разом до оплати:</td><td>\(self.calculateOveral()) грн.</td>
        """
        return html
    }
}


