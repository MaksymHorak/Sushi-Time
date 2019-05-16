//
//  SideMenuTableViewController.swift
//  SushiTime
//
//  Created by 1 on 04.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit
protocol SideMenuTableViewControllerDelegate: class {
    func didSelectCellWithType(type: SlideMenuItemType)
}

class SideMenuTableViewController: UITableViewController {

    
    fileprivate enum Constants {
        static let cellIdentifier = "sideMenuCell"
    }
    
    var items: [SideMenuModel] {
        return [SideMenuModel(type: .menu),
                SideMenuModel(type: .shares),
                SideMenuModel(type: .contacts),
                SideMenuModel(type: .aboutUs),
                SideMenuModel(type: .webSite),
                SideMenuModel(type: .howToGet)]
    }
    weak var delegate: SideMenuTableViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
       // self.view.backgroundColor = UIColor.white
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath) as? SideMenuTableViewCell else { return UITableViewCell()
        }

        // Configure the cell..
        let currentItem = items[indexPath.row]
        let image = UIImage(named: currentItem.imageName)
        cell.itemLbl.text = currentItem.name
        cell.itemImageView.image = image

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        delegate?.didSelectCellWithType(type: item.type)
    }

}
