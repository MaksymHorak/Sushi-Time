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
