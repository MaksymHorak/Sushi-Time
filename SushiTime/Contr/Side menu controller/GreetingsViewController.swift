//
//  GreetingsViewController.swift
//  SushiTime
//
//  Created by 1 on 04.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit
import SideMenu
import MapKit
import SafariServices


class GreetingsViewController: UIViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImg.alpha = 0
        dragonLogoImg.alpha = 0
        setUpSideMenu()
        
        
        //        moreMenuButton.alpha = 0
        //      //  shadowBG.alpha = 0
        //        sushiButton.alpha = 0
        //        drinksButton.alpha = 0
        //        pizzaButton.alpha = 0
        
    }
    @IBOutlet weak var dragonLogoImg: UIImageView!
    @IBOutlet weak var mainImg: UIImageView!
    
  //  @IBOutlet weak var shadowBG: UIImageView!
//    @IBOutlet weak var moreMenuButton: UIButton!
//    @IBOutlet weak var pizzaButton: UIButton!
//    @IBOutlet weak var sushiButton: UIButton!
//    @IBOutlet weak var drinksButton: UIButton!
    
    @IBOutlet weak var menuMoveImage: UIButton!
    @IBOutlet weak var deliveryMoveImage: UIButton!
    @IBOutlet weak var contactsMoveImage: UIButton!
    
    
    
//    @IBAction func moreClicked(_ sender: UIButton) {
//
//        if moreMenuButton.currentImage == #imageLiteral(resourceName: "Menunew") {
//
//            UIView.animate(withDuration: 0.2, animations: {
//              //  self.shadowBG.alpha = 0.6
//                self.drinksButton.alpha = 1
//            }) { (true) in
//                UIView.animate(withDuration: 0.2, animations: {
//                    //  self.sushiView.alpha = 0.7
//                    self.sushiButton.alpha = 1
//                }) { (true) in
//                    UIView.animate(withDuration: 0.2, animations: {
//
//                        //  self.pizzaView.alpha = 0.7
//                        self.pizzaButton.alpha = 1
//                    }) { (true) in
//
//                    }
//                }
//            }
//
//        } else {
//            UIView.animate(withDuration: 1, animations: {
//                self.drinksButton.alpha = 0
//             //   self.shadowBG.alpha = 0
//            }) { (true) in
//            }
//
//            UIView.animate(withDuration: 1, animations: {
//                self.sushiButton.alpha = 0
//            }) { (true) in
//            }
//
//            UIView.animate(withDuration: 1, animations: {
//                self.pizzaButton.alpha = 0
//            }) { (true) in
//            }
//        }
//
//
//        if sender.currentImage == #imageLiteral(resourceName: "Menunew"){
//            sender.setImage(#imageLiteral(resourceName: "MenunewPressed"), for: .normal)
//        } else {
//            sender.setImage(#imageLiteral(resourceName: "Menunew"), for: .normal)
//        }
//    }
//
//
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


        
        UIView.animate(withDuration: 1, animations: {
            self.mainImg.alpha = 1
        }) { (true) in
            UIView.animate(withDuration: 1, animations: {
                self.dragonLogoImg.alpha = 1
            }, completion: { (true) in
                UIView.animate(withDuration: 1, animations: {
                    //here can be oner one something
                    self.menuMoveImage.frame.origin.y -= 80
                    self.menuMoveImage.frame.origin.x += 154
                }, completion: { (true) in
                    UIView.animate(withDuration: 1, animations: {
                        self.deliveryMoveImage.frame.origin.y -= 80
                        self.deliveryMoveImage.frame.origin.x += 154
                    }, completion: { (true) in
                        UIView.animate(withDuration: 1, animations: {
                            self.contactsMoveImage.frame.origin.y -= 80
                            self.contactsMoveImage.frame.origin.x += 154
                        })
                    })
                })
            }) 
            }
//        UIView.animate(withDuration: 1, animations: {
//            self.menuMoveImage.frame.origin.y -= 80
//             self.menuMoveImage.frame.origin.x += 154
//        }) { (finished) in
//
//            if finished {
//                UIView.animate(withDuration: 1, animations: {
//                    self.deliveryMoveImage.frame.origin.y -= 80
//                    self.deliveryMoveImage.frame.origin.x += 154
//                }) { (finished) in
//
//                    if finished {
//                        UIView.animate(withDuration: 1, animations: {
//                            self.contactsMoveImage.frame.origin.y -= 80
//                            self.contactsMoveImage.frame.origin.x += 154
//                        })
//                    }
//
//                }
//
//            }
//        }
    
    }
    
    fileprivate enum Constants {
        static let menuSegueIdentifire = "Menu"
        static let sharesSegueIdentifire = "Shares"
        static let contactsSegueIdentifire = "Contacts"
        static let aboutUsSegueIdentifire = "AboutUs"
        static let webSiteSegueIdentifire = "WebSite"
        static let howToGetSegueIdentifire = "HowToGet"
    }
   

    
    
    
//    @IBAction func DrinksClicked(_ sender: UIButton) {
//        let drinksStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let drinksVC = drinksStoryboard.instantiateViewController(withIdentifier: "DrinksTableViewController")as! DrinksTableViewController
//        self.navigationController?.pushViewController(drinksVC, animated: false)
//
//    }
//
//    @IBAction func SushiClicked(_ sender: UIButton) {
//        let sushiStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let sushiVC = sushiStoryboard.instantiateViewController(withIdentifier: "SushiTableViewController")as! SushiTableViewController
//        self.navigationController?.pushViewController(sushiVC, animated: false)
//    }
//
//    @IBAction func PizzaClicked(_ sender: UIButton) {
//        let pizzaStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let pizzaVC = pizzaStoryboard.instantiateViewController(withIdentifier: "PizzaTableViewController")as! PizzaTableViewController
//        self.navigationController?.pushViewController(pizzaVC, animated: false)
//    }
    

    
    func setUpSideMenu() {
        // Define the menus
        let sb = UIStoryboard(name: "SideMenu", bundle: nil)
        if let vc = sb.instantiateInitialViewController() as? SideMenuTableViewController {
            vc.delegate = self
            let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: vc)
            SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        }
        SideMenuManager.default.menuFadeStatusBar = false
 SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
       // let toolbar = UIToolbar()

    }

    @IBAction func barButtonItemPressed(_ sender: Any) {
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
}




extension GreetingsViewController: SideMenuTableViewControllerDelegate {
    func didSelectCellWithType(type: SlideMenuItemType) {
        var identifire: String!
        switch type {
        
        case .menu: identifire = Constants.menuSegueIdentifire
            
        case .shares: identifire = Constants.sharesSegueIdentifire
            
        case .contacts: identifire = Constants.contactsSegueIdentifire
            
        case .aboutUs: identifire = Constants.aboutUsSegueIdentifire
            
        case .howToGet: identifire = Constants.howToGetSegueIdentifire

                let latitude:CLLocationDegrees = 49.862455
                let longitude:CLLocationDegrees = 24.019259

                let regionDistance:CLLocationDistance = 100;
                let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)

                let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]

                let placemark = MKPlacemark(coordinate: coordinates)
                let mapItem = MKMapItem(placemark: placemark)
                mapItem.name = "Sushi Time"
                mapItem.openInMaps(launchOptions: options)        
        return

        case .webSite:
            SideMenuManager.default.menuLeftNavigationController?.dismiss(animated: true) {
                let svc = SFSafariViewController(url: URL(string: "http://www.xochatime.com")!)
                self.present(svc, animated: true, completion: nil)
            }
        
        return
            
        }
        
        performSegue(withIdentifier: identifire, sender: self)
        SideMenuManager.default.menuLeftNavigationController?.dismiss(animated: true, completion: nil)
        
    }

}
