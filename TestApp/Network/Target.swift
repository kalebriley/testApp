//
//  Target.swift
//  TestApp
//
//  Created by kaleb riley on 2/14/18.
//  Copyright © 2018 Kaleb Riley. All rights reserved.
//

import Alamofire

protocol TargetType {
    var route: String {get}
    var method: HTTPMethod {get}
    var parameters: Parameters {get}
}
