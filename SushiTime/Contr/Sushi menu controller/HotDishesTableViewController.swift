//
//  SushiViewController.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class HotDishesTableViewController: UIViewController {
    
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "HotDishesTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let hotSegueIdentifire = "hot"
        
    }
    var items: [HotDishesModel]{
        return [HotDishesModel(type: .hot)]
    }
}

extension HotDishesTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? HotDishesTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.hotDishesItemImageView.image = UIImage(named: currentItem.imageName)
        cell.hotDishesItemNameLabel.text = currentItem.name
        
        cell.hotDishesItemImageView.layer.cornerRadius = cell.hotDishesItemImageView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
    }
    
    func didSelectCellWithType(type: HotDishesItemType) {
        var identifire: String!
        switch type {
            
        case .hot: identifire = Constants.hotSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}

