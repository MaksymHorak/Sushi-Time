//
//  CheckuotViewController.swift
//  SushiTime
//
//  Created by 1 on 14.12.2017.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class CheckuotViewController: UIViewController {

    @IBAction func cartButton(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let CartVC = storyboard.instantiateViewController(withIdentifier: "CartViewController")as! CartViewController
        self.navigationController?.pushViewController(CartVC, animated: true)
    }
    @IBOutlet var imageName: UIImageView!
    
    @IBOutlet var aboutName: UITextView!
    @IBOutlet var weightName: UILabel!
    @IBOutlet var priceName: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet weak var choosePizzaSize: UISegmentedControl!
    
    var selectedItem: OrderDetailItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageName.image = UIImage(named: selectedItem!.imageName)
        name.text = selectedItem!.name
        priceName.text = String(selectedItem!.priceName)
        weightName.text = String(selectedItem!.weightName)
        aboutName.text = String(selectedItem!.aboutName)
    }
    
    @IBAction func addToCardPressed(_ sender: Any) {
        guard let selectedItem = self.selectedItem else { return }
        
        if let index = CartManager.shared.cartItems.index(of: selectedItem) {
            CartManager.shared.cartItems[index].count += 1
            return
        }
        
        CartManager.shared.cartItems.append(selectedItem)        
    }
    
}
