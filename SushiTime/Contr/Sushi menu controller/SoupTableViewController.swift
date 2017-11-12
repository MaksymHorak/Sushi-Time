//
//  SoupTableViewController.swift
//  SushiTime
//
//  Created by 1 on 12.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class SoupTableViewController: UIViewController {
    
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "SoupTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let firstSegueIdentifire = "first"
        
    }
    var items: [SoupModel]{
        return [SoupModel(type: .first)]
    }
}

extension SoupTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? SoupTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.soupItemImageView.image = UIImage(named: currentItem.imageName)
        cell.soupItemNameLabel.text = currentItem.name
        
        cell.soupItemImageView.layer.cornerRadius = cell.soupItemImageView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
    }
    
    func didSelectCellWithType(type: SoupItemType) {
        var identifire: String!
        switch type {
            
        case .first: identifire = Constants.firstSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}


