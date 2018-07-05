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
    
    func formText() -> String {
        var html = """
        <table border="1" width="30%" height="100">
        <tr>
        <td colspan="3" align="center" >Sushi Time Доставка</td>
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
        html += "</table>"
      /*  """
        \n
        <tr>
        <td>Order Total:</td>       <td></td>    <td>\(self.calculateOveral())</td>
        </tr>
        </table>
        """*/
        return html
    }
}
