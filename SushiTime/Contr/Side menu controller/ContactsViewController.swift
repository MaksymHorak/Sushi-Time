//
//  ContactsViewController.swift
//  SushiTime
//
//  Created by 1 on 29.04.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit


class ContactsViewController: UIViewController {
    
    
    
    @IBAction func callTest(_ sender: UIButton) {
        
        let url: NSURL = URL(string: "TEL://123456678")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
   
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
