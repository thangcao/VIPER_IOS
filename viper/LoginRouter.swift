//
//  LoginRouter.swift
//  viper
//
//  Created by Cao Thắng on 6/18/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//
import UIKit

class LoginRouter: LoginWireframe {
    weak var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let view = UIStoryboard.loginStoryboard.loginController
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let router = LoginRouter()
        
        let navigation = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        
        return navigation
    }
    
    func presentToCustomerTabs() {
        let view = UIStoryboard.customerFlowStoryboard.customerFlow
        viewController?.present(view, animated: true, completion: nil)
    }
}
