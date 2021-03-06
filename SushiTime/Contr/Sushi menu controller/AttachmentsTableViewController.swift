//
//  AttachmentsTableViewController.swift
//  SushiTime
//
//  Created by 1 on 11.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class AttachmentsTableViewController: UIViewController {

    fileprivate enum ConstantsCell{
        static let cellIdentifire = "AttachmentsTableViewCell"
        
    }
    
    fileprivate enum Constants {
        static let hotDishesSegueIdentifire = "HotDishes"
        
        
    }
    var items: [AttachmentsModel]{
        return [AttachmentsModel(type: .attachmentsForPizza),
                AttachmentsModel(type: .attachmentsForSushi)]
    }
    @IBAction func cartButton(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let CartVC = storyboard.instantiateViewController(withIdentifier: "CartViewController")as! CartViewController
        self.navigationController?.pushViewController(CartVC, animated: true)
    }
    
}
// case hotDishes, soups, makiRolls
extension AttachmentsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConstantsCell.cellIdentifire, for: indexPath) as? AttachmentsTableViewCell else{
            
            
            return UITableViewCell()
        }
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        let currentItem = items[indexPath.row]
        cell.attachmentsItemImageView.image = UIImage(named: currentItem.imageName)
        cell.attachmentsItemLabel.text = currentItem.name
        
        cell.attachmentsItemImageView.layer.cornerRadius = cell.attachmentsItemImageView.frame.height / 2
        
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
    
    func didSelectCellWithType(type: AttachmentsItemType) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let vc = sb.instantiateViewController(withIdentifier: "GenericTableViewController") as? OrderDetailsViewController {
            switch type {
                
            case .attachmentsForPizza: vc.dataSource = AttachmentsForPizzaViewModel()
            case .attachmentsForSushi: vc.dataSource = AttachmentsForSushiViewModel()
                
                
                // default: break
                
                
            }
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
