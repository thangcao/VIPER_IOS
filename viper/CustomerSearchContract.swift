//
//  SearchContract.swift
//  viper
//
//  Created by Cao Thắng on 6/19/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

protocol CustomerSearchView: class{
    var presenter: CustomerSearchPresentation! {get set}
    
    // MARK: - Use cases
    func showResults(_ stores: [Store])
    
    func showNoContent()
}

protocol CustomerSearchPresentation: class {
    weak var view: CustomerSearchView? {get set}
    var interactor: CustomerSearchProvider! {get set}
    var router: CustomerSearchWireFarme! {get set}
    
    // MARK: - Actions
    func search(_ searchText: String)
    
}

protocol CustomerSearchProvider: class {
    weak var output: CustomerSearchInteractorOutPut? {get set}
    
    // MARK: - Do action
    func search(_ searchText: String)
}

protocol CustomerSearchInteractorOutPut: class {
    
    // MARK: - Get output
    func searchedResult(_ stores: [Store])
}

protocol CustomerSearchWireFarme: class {
    weak var viewController: UIViewController? { get set }
    
    // MARK: - Init ViewController
    static func assembleModule() -> UIViewController
    
    // MARK: - Navigate to another view controller
}
