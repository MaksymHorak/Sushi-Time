//
//  MenuTableViewController.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class MenuTableViewController: UIViewController {

    fileprivate enum ConstantsCell {
        static let cellIdentifier = "MenuTableViewCell"
    }
    
    fileprivate enum Constantss {
        static let sushiSegueIdentifire = "Sushi"
        static let pizzaSegueIdentifire = "Pizza"
        static let drinksSegueIdentifire = "Drinks"

    }
    var items: [MenuModel]{
        return [MenuModel(type: .sushi),
                MenuModel(type: .pizza),
                MenuModel(type: .drinks)]
    }
}
extension MenuTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifier, for: indexPath) as? MenuTableViewCell else {
            return UITableViewCell()
        }
        let currentItem = items[indexPath.row]
        cell.menuItemImageView.image = UIImage(named: currentItem.imageName)
        cell.menuItemNameLable.text = currentItem.name
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
    }
    
    func didSelectCellWithType(type: MenuItemType) {
        var identifire: String!
        switch type {
            
        case .sushi: identifire = Constantss.sushiSegueIdentifire
            
        case .pizza: identifire = Constantss.pizzaSegueIdentifire
            
        case .drinks: identifire = Constantss.drinksSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
}

