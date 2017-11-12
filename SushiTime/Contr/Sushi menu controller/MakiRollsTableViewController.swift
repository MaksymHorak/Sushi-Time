//
//  MakiRollsTableViewController.swift
//  SushiTime
//
//  Created by 1 on 12.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class MakiRollsTableViewController: UIViewController {
    
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "MakiRollsTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let secondSegueIdentifire = "second"
        
    }
    var items: [MakiRollsModel]{
        return [MakiRollsModel(type: .second)]
    }
}

extension MakiRollsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? MakiRollsTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.makiRollsItemImageView.image = UIImage(named: currentItem.imageName)
        cell.makiRollsItemNameLabel.text = currentItem.name
        
        cell.makiRollsItemImageView.layer.cornerRadius = cell.makiRollsItemImageView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
    }
    
    func didSelectCellWithType(type: MakiRollsItemType) {
        var identifire: String!
        switch type {
            
        case .second: identifire = Constants.secondSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}



