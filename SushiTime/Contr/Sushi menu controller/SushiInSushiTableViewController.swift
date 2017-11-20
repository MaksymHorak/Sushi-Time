//
//  SushiInSushiViewController.swift
//  SushiTime
//
//  Created by 1 on 20.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class SushiInSushiTableViewController: UIViewController {
    
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "SushiInSushiTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let secondSegueIdentifire = "second"
        
    }
    var items: [SushiInSushiModel]{
        return [SushiInSushiModel(type: .second)]
    }
}

extension SushiInSushiTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? SushiInSushiTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.sushiInSushiItemImageView.image = UIImage(named: currentItem.imageName)
        cell.sushiInSushiItemNameLabel.text = currentItem.name
        
        cell.sushiInSushiItemImageView.layer.cornerRadius = cell.sushiInSushiItemImageView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func didSelectCellWithType(type: SushiInSushiItemType) {
        var identifire: String!
        switch type {
            
        case .second: identifire = Constants.secondSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}

