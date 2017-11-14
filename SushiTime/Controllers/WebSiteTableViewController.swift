//
//  WebSiteTableViewController.swift
//  SushiTime
//
//  Created by 1 on 14.11.17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit
import WebKit

class WebSiteTableViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://www.sushitime.lviv.ua/men")
        let reqest = URLRequest(url: url!)
        
        webView.load(reqest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //http://www.sushitime.lviv.ua
    }

}
