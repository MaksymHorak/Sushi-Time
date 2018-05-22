//
//  DrinksTableViewController.swift
//  SushiTime
//
//  Created by 1 on 29.04.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class DrinksTableViewController: UIViewController {
    
    fileprivate enum ConstantsCell{
        static let cellIdentifire = "DrinksTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let hotDishesSegueIdentifire = "HotDishes"

        
    }
    var items: [DrinksModel]{
        return [DrinksModel(type: .withOutAlcohol),
                DrinksModel(type: .alcohol)]
    }
}
// case hotDishes, soups, makiRolls
extension DrinksTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? DrinksTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.drinksItemImageView.image = UIImage(named: currentItem.imageName)
        cell.drinksItemLabel.text = currentItem.name
        
        cell.drinksItemImageView.layer.cornerRadius = cell.drinksItemImageView.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        didSelectCellWithType(type: item.type)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 30, 0)
        cell.layer.transform = transform
        
        UIView.animate(withDuration: 1) {
            cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
            
        }
    }
    
    func didSelectCellWithType(type: DrinksItemType) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let vc = sb.instantiateViewController(withIdentifier: "GenericTableViewController") as? OrderDetailsViewController {
            switch type {
                
            case .alcohol: vc.dataSource = AlcoholViewModel()
            case .withOutAlcohol: vc.dataSource = WithOutAlcoholViewModel()

                
                // default: break
                
                
            }
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
