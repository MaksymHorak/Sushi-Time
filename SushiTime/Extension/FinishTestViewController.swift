//
//  FinishTestViewController.swift
//  SushiTime
//
//  Created by 1 on 23.06.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class FinishTestViewController: UIViewController {

    @IBOutlet weak var finishText: UILabel!
    @IBOutlet weak var successImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func toMainPageButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }

}
