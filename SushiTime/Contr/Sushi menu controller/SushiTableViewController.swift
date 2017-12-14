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
        static let hotDishesSegueIdentifire = "HotDishes"
        static let soupsSegueIdentifire = "soups"
        static let makiRollsSegueIdentifire = "makiRolls"
        static let rollsSegueIdentifire = "rolls"
        static let setsSegueIdentifire = "sets"
        static let sushiSegueIdentifire = "Sushi"
  
    }
    var items: [SushiModel]{
        return [SushiModel(type: .hotDishes),
                SushiModel(type: .soup),
                SushiModel(type: .makiRolls),
                SushiModel(type: .rolls),
                SushiModel(type: .sets),
                SushiModel(type: .sashymi)]
    }
}
 // case hotDishes, soups, makiRolls
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
        tableView.deselectRow(at: indexPath, animated: true)
    }
     
    func didSelectCellWithType(type: SushiItemType) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let vc = sb.instantiateViewController(withIdentifier: "GenericTableViewController") as? OrderDetailsViewController {
        switch type {
            
        case .hotDishes: vc.dataSource = HotDishesViewModel()
        case .makiRolls: vc.dataSource = MakiRollsViewModel()
        case .soup: vc.dataSource = SoupViewModel()
        case .rolls: vc.dataSource = RollsViewModel()
        case .sets: vc.dataSource = SetsViewModel()
        case .sashymi: vc.dataSource = SashymiViewModel()
            
      //  default: break
 
            
        }
        navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
