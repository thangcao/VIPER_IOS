//
//  CustomerSearchRotuer.swift
//  viper
//
//  Created by Cao Thắng on 6/19/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

class CustomerSearchRouter: CustomerSearchWireFarme {
    var viewController: UIViewController?
    static func assembleModule() -> UIViewController {
        let view = UIStoryboard.customerSearchStoryboard.customerSearch
        let presenter = CustomerSearchPresenter()
        let interactor = CustomerSearchInteractor()
        let router = CustomerSearchRouter()
        
        let navigation = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        
        return navigation
    }
}
