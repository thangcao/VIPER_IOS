//
//  CustomerSearchViewController.swift
//  viper
//
//  Created by Cao Thắng on 6/19/17.
//  Copyright © 2017 Cao Thắng. All rights reserved.
//

import UIKit

class CustomerSearchViewController: UIViewController {

    var presenter: CustomerSearchPresentation!
    var stores :[Store] = []
    
    // MARK: - Declare UI
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var noData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSearchBar()
        initTableView()
    }
}

// MARK: - UISearchBar
extension CustomerSearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        presenter.search(searchText)
    }
    
    func initSearchBar(){
        searchBar.delegate = self
    }
}

// MARK: - UITableView
extension CustomerSearchViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemSearch", for: indexPath) as! ItemSearchCell
        cell.store = stores[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }
    
    func initTableView(){
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// MARK: - CustomerSearchView
extension CustomerSearchViewController : CustomerSearchView{
    
    func showResults(_ stores: [Store]) {
        self.stores = stores
        tableView.reloadData()
        noData.isHidden = true
    }
    
    func showNoContent() {
        self.stores.removeAll()
        tableView.reloadData()
        noData.isHidden = false
    }
}





