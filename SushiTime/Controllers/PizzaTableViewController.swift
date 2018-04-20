//
//  PizzaTableViewController.swift
//  PizzaTime
//
//  Created by 1 on 10.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class PizzaTableViewController: UIViewController {

   
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "PizzaTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let firstSegueIdentifire = "first"
        
    }
    var items: [PizzaModel]{
        return [PizzaModel(type: .first)]
    }


}



extension PizzaTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? PizzaTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.pizzaItemImageView.image = UIImage(named: currentItem.imageName)
        cell.pizzaItemNameLabel.text = currentItem.name
        
        cell.pizzaItemImageView.layer.cornerRadius = cell.pizzaItemImageView.frame.height / 2
        
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    func didSelectCellWithType(type: PizzaItemType) {
        var identifire: String!
        switch type {
            
        case .first: identifire = Constants.firstSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
}
