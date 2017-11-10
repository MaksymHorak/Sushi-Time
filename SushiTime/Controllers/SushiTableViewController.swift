//
//  SushiViewController.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class SushiTableViewController: UIViewController {

    fileprivate enum ConstantsCell{
        static let cellIdentifire = "SushiTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let nigiriSegueIdentifire = "Nigiri"
  
    }
    var items: [SushiModel]{
        return [SushiModel(type: .nigiri)]
    }
}

extension SushiTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? SushiTableViewCell else{
            
            return UITableViewCell()
        }
        let currentItem = items[indexPath.row]
        cell.shushiItemImageView.image = UIImage(named: currentItem.imageName)
        cell.sushiItemNameLabel.text = currentItem.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
    }
    
    func didSelectCellWithType(type: SushiItemType) {
        var identifire: String!
        switch type {
            
        case .nigiri: identifire = Constants.nigiriSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}
