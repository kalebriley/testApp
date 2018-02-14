//
//  UserTarget.swift
//  TestApp
//
//  Created by kaleb riley on 2/14/18.
//  Copyright © 2018 Kaleb Riley. All rights reserved.
//

import Alamofire

enum UserTarget: TargetType {
    case users
    case user(id: Int)
    
    var route: String {
        switch self {
        case .users:
            return "users"
        case .user(let id):
            return "users/\(id)"
        }
    }
    
    var parameters: Parameters {
        return [:]
    }
    
    var  method: HTTPMethod {
        switch self {
        case .users:
            return .get
        case .user(_):
            return .get
        }
    }
}
