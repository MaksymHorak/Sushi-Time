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
        static let sushiViewControllerSegueIdentifire = "SushiViewController"
        static let pizzaViewControllerSegueIdentifire = "PizzaViewController"
        static let drinksViewControllerSegueIdentifire = "DrinksViewController"

    }
    var items: [MenuModel]{
        return [MenuModel(type: .sushiViewController),
                MenuModel(type: .pizzaViewController),
                MenuModel(type: .drinksViewController)]
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
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        let currentItem = items[indexPath.row]
        cell.menuItemImageView.image = UIImage(named: currentItem.imageName)
        cell.menuItemNameLable.text = currentItem.name
        cell.menuItemImageView.layer.cornerRadius = cell.menuItemImageView.frame.height / 2
        


        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    func didSelectCellWithType(type: MenuItemType) {
        var identifire: String!
        switch type {
            
        case .sushiViewController: identifire = Constantss.sushiViewControllerSegueIdentifire
            
        case .pizzaViewController: identifire = Constantss.pizzaViewControllerSegueIdentifire
            
        case .drinksViewController: identifire = Constantss.drinksViewControllerSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
}

