//
//  SushiViewController.swift
//  SushiTime
//
//  Created by 1 on 07.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class SushiTableViewController: UIViewController {

    fileprivate enum Constants {
        static let cellIdentifire = "SushiTableViewCell"
        
    }
    var items: [SushiModel]{
        return [SushiModel(name: "1", imageName: "Home"), SushiModel(name: "2", imageName: "Home"), SushiModel(name: "3", imageName: "Home ")]
    }
}

extension SushiTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifire, for: indexPath) as? SushiTableViewCell else{
            
            return UITableViewCell()
        }
        let currentItem = items[indexPath.row]
        cell.shushiItemImageView.image = UIImage(named: currentItem.imageName)
        cell.sushiItemNameLabel.text = currentItem.name
        
        return cell
    }
    
    
    
}
