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
    
    private var productViewModel: ProductViewModel?
    
    init(productViewModel: ProductViewModel = ProductViewModel()) {
        super.init(nibName: nil, bundle: nil)
        self.productViewModel = productViewModel
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
