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
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "GenericTableViewController")
        object_setClass(vc, RollsTableViewController.self) // change class to next VC class
        (vc as! RollsTableViewController).dataSource = MakiRollsViewModel()// change class to next VC class and change View Model
        navigationController?.pushViewController(vc, animated: true)
        
    }
}



