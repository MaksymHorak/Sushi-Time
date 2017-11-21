//
//  WebSiteTableViewController.swift
//  SushiTime
//
//  Created by 1 on 14.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit
import SafariServices
import MapKit

class WebSiteTableViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //http://www.sushitime.lviv.ua
    }
    
    @IBAction func ShowWhere(_ sender: Any) {
    
    
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
        
    }
 //49.862455, 24.019259
    
    @IBAction func openWebSite(_ sender: Any) {
        let svc = SFSafariViewController(url: URL(string: "http://www.sushitime.lviv.ua/men")!)
        self.present(svc, animated: true, completion: nil)
    }

    }



//import UIKit
//import WebKit
//
//class WebSiteTableViewController: UIViewController {
//
//    @IBOutlet var webView: WKWebView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let url = URL(string: "http://www.sushitime.lviv.ua/men")
//        let reqest = URLRequest(url: url!)
//
//        webView.load(reqest)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//        //http://www.sushitime.lviv.ua
//    }
//
//}

