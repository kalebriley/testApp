//
//  ViewController.swift
//  TestApp
//
//  Created by kaleb riley on 2/14/18.
//  Copyright © 2018 Kaleb Riley. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Network.shared.request(target: UserTarget.getUser) { result in
            switch result {
            case .success(let json):
                let localUser: [User] = User.UsersFrom(json: json)
                print(localUser)
            case .failure(let error):
                print(error)
            }
        }
    }
}

