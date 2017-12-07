//
//  SoupTableViewController.swift
//  SushiTime
//
//  Created by 1 on 12.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class SoupTableViewController: OrderDetailsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "CheckoutViewContoller", bundle: nil)
        if let vc = sb.instantiateInitialViewController() {
        navigationController?.pushViewController(vc, animated: true)
        }
    }
}



