//
//  CustomerSearchPresenter.swift
//  viper
//
//  Created by Cao Thắng on 6/19/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import Foundation

class CustomerSearchPresenter: CustomerSearchPresentation {
    
    weak var view: CustomerSearchView?
    var interactor: CustomerSearchProvider!
    var router: CustomerSearchWireFarme!
    
    func search(_ searchText: String) {
        interactor.search(searchText)
    }
}

extension CustomerSearchPresenter: CustomerSearchInteractorOutPut {
    
    func searchedResult(_ stores: [Store]) {
        if stores.isEmpty {
            view?.showNoContent()
        } else {
            view?.showResults(stores)
        }
    }
}
