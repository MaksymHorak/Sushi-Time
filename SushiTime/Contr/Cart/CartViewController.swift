//
//  TestViewController.swift
//  SushiTime
//
//  Created by 1 on 22.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {
    
    @IBOutlet weak var cartTableView: UITableView!
    
    @IBOutlet weak var overalLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overalLbl.text = "\(CartManager.shared.calculateOveral()) грн"
        
    }
    @IBAction func orderingButton(_ sender: Any) {
        if overalLbl.text == "0 грн" {
            let alert = UIAlertController(title: "Ваша корзина пуста!", message: nil, preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let when = DispatchTime.now() + 1
            DispatchQueue.main.asyncAfter(deadline: when){
                alert.dismiss(animated: true, completion: nil) }

        } else {

//            let cartStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let orderingVC = cartStoryboard.instantiateViewController(withIdentifier: "OrderingTableViewController")as! OrderingTableViewController
//            self.navigationController?.pushViewController(orderingVC, animated: true)
            let alertVC = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            let callToKyivstar = UIAlertAction(title: "Доставка", style: .default) { (action) in
                            let cartStoryboard = UIStoryboard(name: "Main", bundle: nil)
                            let orderingVC = cartStoryboard.instantiateViewController(withIdentifier: "OrderingTableViewController")as! OrderingTableViewController
                            self.navigationController?.pushViewController(orderingVC, animated: true)
            }
            
            let callToLife = UIAlertAction(title: "Самовивіз", style: .default) { (action) in
                let cartStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let orderingVC = cartStoryboard.instantiateViewController(withIdentifier: "PickupViewController")as! PickupViewController
                self.navigationController?.pushViewController(orderingVC, animated: true)
            }
            
            let actionCancel = UIAlertAction(title: "Закрити", style: .cancel) { (action) in
            }
            
            alertVC.addAction(callToKyivstar)
            alertVC.addAction(callToLife)
            alertVC.addAction(actionCancel)
            
            self.present(alertVC, animated: true){
                print("alert is show")
            }
            
        }
    }
    
}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CartManager.shared.cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GenericTableViewCell") as? CartTableViewCell else { return UITableViewCell() }
        cell.delegate = self
        let item = CartManager.shared.cartItems[indexPath.row]
        cell.countLbl.text = "\(item.count)"
        cell.setUpWithViewModel(viewModel: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            CartManager.shared.cartItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}

extension CartViewController: CartTableViewCellDelegate {
    func didPressMinus(cell: CartTableViewCell) {
        if let index = cartTableView.indexPath(for: cell)?.row {
            var count = CartManager.shared.cartItems[index].count
            if count > 1 {
                CartManager.shared.cartItems[index].count -= 1
                count-=1
                cell.countLbl.text = "\(count)"
                  overalLbl.text = "\(CartManager.shared.calculateOveral()) грн"
            }
        }
    }
    
    func didPressPlus(cell: CartTableViewCell) {
        if let index = cartTableView.indexPath(for: cell)?.row {
            var count = CartManager.shared.cartItems[index].count
            CartManager.shared.cartItems[index].count += 1
            count+=1
            cell.countLbl.text = "\(count)"
              overalLbl.text = "\(CartManager.shared.calculateOveral()) грн"
        }
    }
    
    
}
