//
//  TestViewController.swift
//  SushiTime
//
//  Created by 1 on 22.05.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let newLayer = CAGradientLayer()
        newLayer.colors = [ UIColor.black.cgColor, UIColor.darkGray.cgColor ]
        newLayer.frame = view.frame
        
        view.layer.insertSublayer(newLayer, at: 0)
    }
}
