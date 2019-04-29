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
  var a = "q12we34rt5"
    var b = "horak.maksym@gmail.com"
    func sendMailWithData(userEmail: String?, text: String, completionHandler: @escaping (_ success: Bool) -> Void ) {
        let session = MCOSMTPSession()
        session.hostname = "smtp.gmail.com"
        session.port = 465
        session.username = "sudhitimelviv@gmail.com"
        session.password = "\(a)"
        session.connectionType = MCOConnectionType.TLS
        let builder = MCOMessageBuilder()
        builder.header.from = MCOAddress(mailbox: "tnrs_555@ua.fm")
        builder.header.to = [MCOAddress(mailbox: userEmail!), MCOAddress(mailbox: "\(b)")]
        builder.header.subject = "Sushi Order"
        builder.htmlBody = text
        let op = session.sendOperation(with: builder.data())
        op?.start(){ error in
            print(error?.localizedDescription)
            completionHandler(error == nil)
        }
    }
    
    
}
