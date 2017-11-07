//
//  MenuTableViewController.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class MenuTableViewController: UIViewController {

    fileprivate enum Constants {
        static let cellIdentifire = "MenuTableViewCell"

    }

    var items: [MenuModel]{
        return [MenuModel(name: "Name", imageName: "Home"), MenuModel(name: "Misha", imageName: "Home"), MenuModel(name: "Maaaaa", imageName: "Home")]
    }
}

extension MenuTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifire, for: indexPath) as? MenuTableViewCell else {
            return UITableViewCell()
        }
        let currentItem = items[indexPath.row]
        cell.menuItemImageView.image = UIImage(named: currentItem.imageName)
        cell.menuItemNameLable.text = currentItem.name
        
        return cell
    }
    
    //menuItemNameLable
    
}
