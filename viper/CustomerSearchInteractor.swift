//
//  CustomerInteractor.swift
//  viper
//
//  Created by Cao Thắng on 6/19/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import Foundation

class CustomerSearchInteractor: CustomerSearchProvider{
    
    var output: CustomerSearchInteractorOutPut?
    
    func search(_ searchText: String) {
        var stores: [Store] = []
        let text = searchText.lowercased()
        if text.contains("a") || text.contains("c") {
            stores.append(Store(title: "Bun Dau"))
            stores.append(Store(title: "Com Tam"))
            stores.append(Store(title: "Phuc Long"))
            stores.append(Store(title: "KFC"))
        } else {
            if text.contains("b") || text.contains("g") || text.contains("n") {
                stores.append(Store(title: "Loteria"))
                stores.append(Store(title: "Mi Go"))
                stores.append(Store(title: "Pizza"))
                stores.append(Store(title: "Don Chicken"))
            }
        }
        
        output?.searchedResult(stores)
    }
}
