//
//  RollsTableViewController.swift
//  SushiTime
//
//  Created by 1 on 14.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class RollsTableViewController: UIViewController {
    
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "RollsTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let secondSegueIdentifire = "second"
        
    }
    var items: [RollsModel]{
        return [RollsModel(type: .second)]
    }
}

extension RollsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? RollsTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.rollsItemImageView.image = UIImage(named: currentItem.imageName)
        cell.rollsItemNameLabel.text = currentItem.name
        
        cell.rollsItemImageView.layer.cornerRadius = cell.rollsItemImageView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func didSelectCellWithType(type: RollsItemType) {
        var identifire: String!
        switch type {
            
        case .second: identifire = Constants.secondSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}
