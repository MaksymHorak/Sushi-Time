//
//  ContactsViewController.swift
//  SushiTime
//
//  Created by 1 on 29.04.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func CartButton(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let CartVC = storyboard.instantiateViewController(withIdentifier: "CartViewController")as! CartViewController
        self.navigationController?.pushViewController(CartVC, animated: true)
    }
    

    @IBAction func orderingCallButton(_ sender: Any) {
        let alertVC = UIAlertController(title: "Sushi Time", message: "Доставка", preferredStyle: .actionSheet)
        let callToKyivstar = UIAlertAction(title: "Київстар", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380987137616")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
        let callToLife = UIAlertAction(title: "Лайф", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380630185979")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        alertVC.addAction(callToKyivstar)
        alertVC.addAction(callToLife)
        alertVC.addAction(actionCancel)
        self.present(alertVC, animated: true){
            print("alert is show")
        }
    }
    
    @IBAction func pickupCallButton(_ sender: Any) {
        let alertVC = UIAlertController(title: "Sushi Time", message: "Самовивіз", preferredStyle: .actionSheet)
        let callToKyivstar = UIAlertAction(title: "Київстар", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380688903909")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
        let callToLife = UIAlertAction(title: "Лайф", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380930191720")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        alertVC.addAction(callToKyivstar)
        alertVC.addAction(callToLife)
        alertVC.addAction(actionCancel)
        self.present(alertVC, animated: true){
            print("alert is show")
        }

    }
    @IBAction func callTest(_ sender: UIButton) {
        let alertVC = UIAlertController(title: "Sushi Time", message: "Доставка", preferredStyle: .actionSheet)
        let callToKyivstar = UIAlertAction(title: "Київстар", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380987137616")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
        let callToLife = UIAlertAction(title: "Лайф", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380630185979")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        alertVC.addAction(callToKyivstar)
        alertVC.addAction(callToLife)
        self.present(alertVC, animated: true){
            print("alert is show")
        }


        
        let alertVC1 = UIAlertController(title: "Sushi Time", message: "Самовивiз", preferredStyle: .actionSheet)
        let callToKyivstar1 = UIAlertAction(title: "Київстар", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380987137616")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
        let callToLife1 = UIAlertAction(title: "Лайф", style: .default) { (action) in
            let url: NSURL = URL(string: "TEL://+380630185979")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }

        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }

        

        alertVC1.addAction(callToKyivstar1)
        alertVC1.addAction(callToLife1)
        alertVC.addAction(actionCancel)
        
        self.present(alertVC1, animated: true){
            print("alert is show")
        }
        
    }
    
   
    }

//    let alertVC = UIAlertController(title: "Доставка", message: "Подзвонити", preferredStyle: .actionSheet)
//    let callToKyiwstar = UIAlertAction(title: "Kyivstar", style: .default) { (action) in
//        let url: NSURL = URL(string: "TEL://123456678")! as NSURL
//        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
//    }
//    let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//
//    }
//
//    alertVC.addAction(callToKyiwstar)
//    alertVC.addAction(actionCancel
//    self.present(alertVC, animated: true) {
//    print("Alert is show")
//    }

    
    


