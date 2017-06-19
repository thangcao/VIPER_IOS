//
//  LoginViewController.swift
//  viper
//
//  Created by Cao Thắng on 6/18/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Declare UI variables
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var presenter: LoginPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionLogin(_ sender: Any) {
        if let username = username.text
            , let password = password.text {
            if !username.isEmpty , !password.isEmpty {
                let account = Account(name: username, password: password)
                presenter.login(account: account)
            } else {
                showError(message: "Username or password is empty")
            }
        }
    }
}

// MARK: - LoginView
extension LoginViewController: LoginView {
    
    func showError(message: String) {
        // TODO: show dilalog
    }
}
