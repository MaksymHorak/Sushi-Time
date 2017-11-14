//
//  SetsTableViewController.swift
//  SushiTime
//
//  Created by 1 on 14.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class SetsTableViewController: UIViewController {
    
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "SetsTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let secondSegueIdentifire = "second"
        
    }
    var items: [SetsModel]{
        return [SetsModel(type: .second)]
    }
}

extension SetsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? SetsTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.setsItemImageView.image = UIImage(named: currentItem.imageName)
        cell.setsItemNameLabel.text = currentItem.name
        
        cell.setsItemImageView.layer.cornerRadius = cell.setsItemImageView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func didSelectCellWithType(type: SetsItemType) {
        var identifire: String!
        switch type {
            
        case .second: identifire = Constants.secondSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}
