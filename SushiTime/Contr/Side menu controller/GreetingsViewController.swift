//
//  GreetingsViewController.swift
//  SushiTime
//
//  Created by 1 on 04.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit
import SideMenu
import SafariServices

class GreetingsViewController: UIViewController  {
    
    fileprivate enum Constants {
        static let menuSegueIdentifire = "Menu"
        static let sharesSegueIdentifire = "Shares"
        static let contactsSegueIdentifire = "Contacts"
        static let aboutUsSegueIdentifire = "AboutUs"
        static let webSiteSegueIdentifire = "WebSite"
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
