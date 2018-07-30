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
  
    func sendMailWithData(userEmail: String?, text: String, completionHandler: @escaping (_ success: Bool) -> Void ) {
        let session = MCOSMTPSession()
        session.hostname = "smtp.gmail.com"
        session.port = 465
        session.username = "sudhitimelviv@gmail.com"
        session.password = "q12we34rt5"
        session.connectionType = MCOConnectionType.TLS
        let builder = MCOMessageBuilder()
        builder.header.from = MCOAddress(mailbox: "sudhitimelviv@gmail.com")
        builder.header.to = [MCOAddress(mailbox: userEmail!), MCOAddress(mailbox: "sudhitimelviv@gmail.com")]
        builder.header.subject = "Sushi Order"
        builder.htmlBody = text
        let op = session.sendOperation(with: builder.data())
        op?.start(){ error in
            completionHandler(error == nil)
        }
    }
    
    
}
