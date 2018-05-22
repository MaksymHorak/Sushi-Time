//
//  OrderDetailsViewController.swift
//  SushiTime
//
//  Created by 1 on 22.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit
// every controller which displayes the same content should be inherited from this one and didSelectRow for Index pass should be overriden
class OrderDetailsViewController: UIViewController {

    @IBOutlet var tableViewTest: UITableView!
    var dataSource: OrderDetailProvider?


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableViewTest.reloadData()
    }

    
}

extension OrderDetailsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.itemsToDisplay.count ?? 0
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GenericTableViewCell") as? GenericTableViewCell, let dataSource = dataSource else { return UITableViewCell() } //change identifire name to generic one, cell class to generic one and put identifire string to constants
        let item = dataSource.itemsToDisplay[indexPath.row]
        cell.setUpWithViewModel(viewModel: item)
            
        return cell
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
    

}

extension OrderDetailsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "CheckoutViewContoller", bundle: nil)
        if let vc = sb.instantiateInitialViewController() as? CheckuotViewController {
            let selectedItem = dataSource?.itemsToDisplay[indexPath.row]
            vc.selectedItem = selectedItem
        navigationController?.pushViewController(vc, animated: true)
        }
    }
}
