//
//  ViewController.swift
//  RXSwiftDemoApp
//
//  Created by waheedCodes on 06/04/2021.
//

import UIKit

class ProductsViewController: UIViewController {
    
    private let productTableView: UITableView = {
        let tableview = UITableView()
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        return tableview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
