//
//  LoginPresenter.swift
//  viper
//
//  Created by Cao Thắng on 6/18/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit
import Foundation
class LoginPresenter: LoginPresentation {
    
    weak var view: LoginView?
    var interactor: LoginProvider!
    var router: LoginWireframe!
    
    func login(account: Account) {
        interactor.login(account)
    }
    
}

// MARK: - Get output from Interactor
extension LoginPresenter : LoginInteractorOutput {
    func onSuccess() {
        router.presentToCustomerTabs();
    }
    
    func onError(message: String) {
        view?.showError(message: message)
    }
}
