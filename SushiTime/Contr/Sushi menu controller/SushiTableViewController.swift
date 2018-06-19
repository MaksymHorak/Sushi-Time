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
        static let rollsWithLososSegueIdentifire = "RollsWithLosos"
  
    }
    var items: [SushiModel]{
        return [SushiModel(type: .hotDishes),
                SushiModel(type: .soup),
                SushiModel(type: .makiRolls),
                SushiModel(type: .rolls),
                SushiModel(type: .sets),
                SushiModel(type: .sushi),
                SushiModel(type: .rollsWithLosos)]
    }
    @IBAction func CartButton(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let CartVC = storyboard.instantiateViewController(withIdentifier: "CartViewController")as! CartViewController
        self.navigationController?.pushViewController(CartVC, animated: true)
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
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 30, 0)
        cell.layer.transform = transform
        
        UIView.animate(withDuration: 0.6) {
            cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
            
        }
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
        case .sushi: vc.dataSource = SushiViewModel()
        case .rollsWithLosos: vc.dataSource = RollsWithLososViewModel()
            
       // default: break

            
        }
        navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
