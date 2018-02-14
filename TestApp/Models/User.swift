//
//  User.swift
//  TestApp
//
//  Created by kaleb riley on 2/14/18.
//  Copyright © 2018 Kaleb Riley. All rights reserved.
//

import SwiftyJSON

// MARK: - Model
struct User {
    let name: String
    let email: String
}

// MARK: - Parsing
// NOTE: - SwiftyJSON gives us some default functionality thats hard to resist. Ideally we would use Decodable for parsing.
extension User {
    static func UserFrom(json: JSON) -> User {
        let name = json["name"].stringValue
        let email = json["email"].stringValue
        
        return User(name: name, email: email)
    }
    
    static func UsersFrom(json: JSON) -> [User] {
        return json.arrayValue.map { UserFrom(json: $0) }
    }
    
}
