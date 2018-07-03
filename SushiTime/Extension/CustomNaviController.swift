//
//  CustomNaviController.swift
//  SushiTime
//
//  Created by 1 on 03.07.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class CustomNaviController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
    }


}
