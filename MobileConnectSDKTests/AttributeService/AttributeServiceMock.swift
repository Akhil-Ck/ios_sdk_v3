//
//  AttributeServiceMock.swift
//  MobileConnectSDK
//
//  Created by Mircea Grecu on 17/08/2016.
//  Copyright © 2016 GSMA. All rights reserved.
//

import Foundation
import Alamofire

@testable import MobileConnectSDK

class AttributeServiceMock: AttributeService {
  
  var error: NSError?
  var response: AttributeResponseModel?
  
}