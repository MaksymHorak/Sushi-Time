//
//  CheckuotViewController.swift
//  SushiTime
//
//  Created by 1 on 14.12.2017.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class CheckuotViewController: UIViewController {

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
    
}
