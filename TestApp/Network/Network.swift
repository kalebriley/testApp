//
//  Network.swift
//  TestApp
//
//  Created by kaleb riley on 2/14/18.
//  Copyright © 2018 Kaleb Riley. All rights reserved.
//

import Alamofire
import SwiftyJSON

class Network {
    // MARK: - Singleton Instance
    static let shared = Network()
    
    // MARK: - iVars
    private let baseURL: String
    
    private init() {
        // NOTE: - This url should be stored in a plist and retrieved through the main bundle api.
        baseURL = "https://jsonplaceholder.typicode.com/"
        
        // NOTE: - We can also set values for the session here. IE session timeout interval.
    }
    
    func request(target: TargetType, completion: @escaping (Result<JSON>) -> Void ) {
        guard let requestURL: URL = URL(string: baseURL + target.route) else {
            // TODO: Implement error handling
            return
        }
        
        Alamofire.request(requestURL, method: target.method, parameters: target.parameters).responseJSON { response in
            switch response.result {
            case .success(let rawJson):
                let json = JSON(rawJson)
                completion(.success(json))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
