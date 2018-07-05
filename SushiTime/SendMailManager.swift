//
//  SendMailManager.swift
//  SushiTime
//
//  Created by 1 on 04.07.2018.
//  Copyright © 2018 Self. All rights reserved.
//

import Foundation

struct SendMailManager {
    
    static let shared = SendMailManager()
    
    let session = URLSession.shared
    
    let apiKey = "3e29ca75-580a-4f70-8d16-4c2d2677e7ab"
    
    let baseURL = "https://api.elasticemail.com/v2/email/send"
  
    func sendMailWithData(userEmail: String?, text: String, completionHandler: @escaping (_ success: Bool) -> Void ) {
        //+ "&msgTo=\(userEmail)"
        let urlStr = baseURL + "?apikey=" + apiKey + "&msgTo=zakharov.paul@live.com" + "&from=developer.zakharov@gmail.com" + "&subject=SushiOrder" + "&bodyHtml=" + text
        let url = URL(string: urlStr.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        session.dataTask(with: request) { (data, resp, error) in
            guard error == nil, let data = data else { completionHandler(false); return }
            if let json = try? JSONSerialization.jsonObject(with: data, options: [.allowFragments]) as? [String: Any] {
                if let success = json?["success"] as? Bool {
                    completionHandler(success)
                }
                print(json)
            }
            completionHandler(false)
            
        }.resume()
    }
    
    
}
