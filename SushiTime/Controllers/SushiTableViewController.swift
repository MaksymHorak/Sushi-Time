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
        static let syrnyiSegueIdentifire = "syrnyi"
        static let veganSegueIdentifire = "vegan"
        static let futomakiSegueIdentifire = "futomaki"
  
    }
    var items: [SushiModel]{
        return [SushiModel(type: .syrnyi),
                SushiModel(type: .vegan),
                SushiModel(type: .futomaki)]
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
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.shushiItemImageView.image = UIImage(named: currentItem.imageName)
        cell.sushiItemNameLabel.text = currentItem.name
        
        cell.shushiItemImageView.layer.cornerRadius = cell.shushiItemImageView.frame.height / 2 
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
    }
    
    func didSelectCellWithType(type: SushiItemType) {
        var identifire: String!
        switch type {
            
        case .syrnyi: identifire = Constants.syrnyiSegueIdentifire
        case .vegan: identifire = Constants.veganSegueIdentifire
        case .futomaki: identifire = Constants.futomakiSegueIdentifire
        }
        
        performSegue(withIdentifier: identifire, sender: self)
    }
    
}
