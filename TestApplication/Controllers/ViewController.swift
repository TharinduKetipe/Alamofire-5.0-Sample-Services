//
//  ViewController.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/5/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIClient.shared.register(name: "Tharindu1129000", salary: "20000", age: "23") { (status, response) in
            
        }
        
        APIClient.shared.updateUser(name: "Tharindu", salary: "30000", age: "25", userId: "719") { (status, response) in
            
        }
        
        APIClient.shared.employees { (status, response) in
//            print(response)
        }
        
        APIClient.shared.employee(empId: "15708") { (status, response) in
            print(response)
        }
    }


}

