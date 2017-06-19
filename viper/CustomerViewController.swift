//
//  CustomerViewController.swift
//  viper
//
//  Created by Cao Thắng on 6/18/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

class CustomerViewController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        let tabSearch = CustomerSearchRouter.assembleModule()
        let tabOneBarItem = UITabBarItem(title: "Tab Search", image: nil, selectedImage: nil)
        
        tabSearch.tabBarItem = tabOneBarItem
        
        viewControllers = [tabSearch]
    }

}
