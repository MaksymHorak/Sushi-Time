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
    
    @IBOutlet weak var moreMenuButton: UIButton!
    @IBOutlet weak var pizzaButton: UIButton!
    @IBOutlet weak var sushiButton: UIButton!
    @IBOutlet weak var drinksButton: UIButton!
    
    var pizzaButtonCenter: CGPoint!
    var sushiButtonCenter: CGPoint!
    var drinksButtonCenter: CGPoint!
    
    fileprivate enum Constants {
        static let menuSegueIdentifire = "Menu"
        static let sharesSegueIdentifire = "Shares"
        static let contactsSegueIdentifire = "Contacts"
        static let aboutUsSegueIdentifire = "AboutUs"
        static let webSiteSegueIdentifire = "WebSite"
        static let howToGetSegueIdentifire = "HowToGet"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         setUpSideMenu()
        // Do any additional setup after loading the view.
        pizzaButtonCenter = pizzaButton.center
        sushiButtonCenter = sushiButton.center
        drinksButtonCenter = drinksButton.center
        
        sushiButton.center = moreMenuButton.center
        pizzaButton.center = moreMenuButton.center
        drinksButton.center = moreMenuButton.center
    }
    
    
    
    @IBAction func DrinksClicked(_ sender: UIButton) {

    }
    
    @IBAction func SushiClicked(_ sender: UIButton) {
    }
    
    @IBAction func PizzaClicked(_ sender: UIButton) {
    }
    
    @IBAction func moreClicked(_ sender: UIButton) {
        if moreMenuButton.currentImage == #imageLiteral(resourceName: "SideMenuMenu") {
            UIView.animate(withDuration: 0.3, animations: {
                //animation here!
                self.pizzaButton.alpha = 1
                self.drinksButton.alpha = 1
                self.sushiButton.alpha = 1
                
                self.pizzaButton.center = self.pizzaButtonCenter
                self.drinksButton.center = self.drinksButtonCenter
                self.sushiButton.center = self.sushiButtonCenter
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.pizzaButton.alpha = 0
                self.drinksButton.alpha = 0
                self.sushiButton.alpha = 0
                
                self.sushiButton.center = self.moreMenuButton.center
                self.pizzaButton.center = self.moreMenuButton.center
                self.drinksButton.center = self.moreMenuButton.center
            })
        }
    
        
    if sender.currentImage == #imageLiteral(resourceName: "SideMenuMenu") {
            sender.setImage(#imageLiteral(resourceName: "MenuButtonOn"), for: .normal)
        } else {
            sender.setImage(#imageLiteral(resourceName: "SideMenuMenu"), for: .normal)
        }
        
    }
    
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
                let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)

                let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]

                let placemark = MKPlacemark(coordinate: coordinates)
                let mapItem = MKMapItem(placemark: placemark)
                mapItem.name = "Sushi Time"
                mapItem.openInMaps(launchOptions: options)        
        return

        case .webSite:
            SideMenuManager.default.menuLeftNavigationController?.dismiss(animated: true) {
                let svc = SFSafariViewController(url: URL(string: "http://www.sushitime.lviv.ua")!)
                self.present(svc, animated: true, completion: nil)
            }
        
        return
            
        }
        
        performSegue(withIdentifier: identifire, sender: self)
        SideMenuManager.default.menuLeftNavigationController?.dismiss(animated: true, completion: nil)
        
    }
    
}
