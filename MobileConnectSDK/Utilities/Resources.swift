//
//  Resources.swift
//  MobileConnectSDK
//
//  Created by Andoni Dan on 03/06/16.
//  Copyright © 2016 GSMA. All rights reserved.
//

import Foundation

//MARK: Local constants
private let kResourceBundleIdentifier : String = "com.GSMA.MobileConnectSDK"
private let kImageName : String = "mobileConnectButtonImage"

public class Resources
{
    public class var bundle : NSBundle?
    {
        return NSBundle(identifier: kResourceBundleIdentifier)
    }
    
    public class var mobileConnectImage : UIImage?
    {
        guard let bundle = bundle else
        {
            return nil
        }
        
        return UIImage(named: kImageName, inBundle: bundle, compatibleWithTraitCollection: nil)
    }
}