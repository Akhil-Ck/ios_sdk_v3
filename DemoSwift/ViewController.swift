//
//  ViewController.swift
//  DemoSwift
//
//  Created by jenkins on 26/06/2016.
//  Copyright © 2016 GSMA. All rights reserved.
//

import UIKit
import MobileConnectSDK

class ViewController: UIViewController, MobileConnectManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MobileConnectSDK.setDelegate(self)
    }
    
    //MARK: Events
    @IBAction func getAction(sender: AnyObject) {
        
        let manager : MobileConnectManager = MobileConnectManager()
        
        manager.getTokenInPresenterController(self) { (tokenResponseModel, error) in
            
            print(tokenResponseModel)
            print(error)
        }
        
//        let discoveryService : DiscoveryService = DiscoveryService()
//        
//        discoveryService.startOperatorDiscoveryForPhoneNumber("Client's number here") { (operatorsData, error) in
//        
//            let clientId : String = operatorsData?.response?.client_id ?? ""
//            let authorizationURL : String = operatorsData?.response?.apis?.operatorid?.authorizationLink() ?? ""
//            let tokenURL : String = operatorsData?.response?.apis?.operatorid?.tokenLink() ?? ""
//            
//            
//            let mobileService : MobileConnectService = MobileConnectService(clientId: clientId, authorizationURL: authorizationURL, tokenURL: tokenURL)
//            
//            mobileService.getTokenInController(self, subscriberId: operatorsData?.subscriber_id ?? "", completionHandler: { (controller, tokenModel, error) in
//                
//                controller?.dismissViewControllerAnimated(true, completion: nil)
//                
//                let tokenResponse : TokenResponseModel? = TokenResponseModel(tokenModel: tokenModel)
//                
//                print(tokenResponse)
//                print(error)
//            })
//        }
    }
}

