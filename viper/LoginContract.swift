//
//  LoginContract.swift
//  viper
//
//  Created by Cao Thắng on 6/18/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

protocol LoginView: class {
    var presenter: LoginPresentation! { get set }
    
    func showError(message: String)
}

protocol LoginPresentation: class {
    weak var view: LoginView? { get set }
    var interactor: LoginProvider! { get set }
    var router: LoginWireframe! { get set }
    
    func login(account: Account)
}

protocol LoginProvider: class{ // Interactor
    weak var output: LoginInteractorOutput? { get set }
    
    func login(_ account: Account)
    
}

protocol LoginInteractorOutput: class{
    func onSuccess()
    
    func onError(message: String)
}

protocol LoginWireframe: class{
    weak var viewController: UIViewController? { get set }
    
    static func assembleModule() -> UIViewController
    
    func presentToCustomerTabs()
    
}
