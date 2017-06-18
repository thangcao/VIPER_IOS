//
//  LoginInteractor.swift
//  viper
//
//  Created by Cao Thắng on 6/18/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import Foundation
 
class LoginInteractor : LoginProvider {
    weak var output: LoginInteractorOutput?
    
    func login(_ account: Account) {
        output?.onSuccess()
    }
    
}
