//
//  ExUiStoryBoard.swift
//  viper
//
//  Created by Cao Thắng on 6/18/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

class StoryboardController {
    static func initialViewControllerForStoryboardWithName(name: String) -> UIViewController? {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateInitialViewController()
    }
}


// MARK: - UIStoryboard
extension UIStoryboard {
    static var loginStoryboard: UIStoryboard {
        return UIStoryboard(name: "LoginStoryboard", bundle: nil)
    }
    
    static var customerFlowStoryboard: UIStoryboard {
        return UIStoryboard(name: "CustomerFlowStoryboard", bundle: nil)
    }
    
    static var customerSearchStoryboard: UIStoryboard {
        return UIStoryboard(name: "CustomerSearchStoryboard", bundle: nil)
    }
}

// MARK: - ViewController inside storyboard
extension UIStoryboard {
    var loginController: LoginViewController {
        guard let vc = StoryboardController.initialViewControllerForStoryboardWithName(name: "LoginStoryboard") else {
            fatalError("LoginViewController couldn't be found in Storyboard file")
        }
        return vc as! LoginViewController
    }
    
    var customerFlow: CustomerViewController {
        guard let vc = StoryboardController.initialViewControllerForStoryboardWithName(name: "CustomerFlowStoryboard") else {
            fatalError("CutomerFlowViewController couldn't be found in Storyboard file")
        }
        return vc as! CustomerViewController
    }
    
    var customerSearch: CustomerSearchViewController {
        guard let vc = StoryboardController.initialViewControllerForStoryboardWithName(name: "CustomerSearchStoryboard") else {
            fatalError("CutomerFlowViewController couldn't be found in Storyboard file")
        }
        return vc as! CustomerSearchViewController
    }
    
}

