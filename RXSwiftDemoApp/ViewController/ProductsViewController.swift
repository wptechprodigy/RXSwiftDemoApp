//
//  ViewController.swift
//  RXSwiftDemoApp
//
//  Created by waheedCodes on 06/04/2021.
//

import UIKit
import RxSwift

class ProductsViewController: UIViewController {
    
    private let productTableView: UITableView = {
        let tableview = UITableView()
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        return tableview
    }()
    
    private var productViewModel: ProductViewModel?
    private var bag = DisposeBag()
    
    init(productViewModel: ProductViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.productViewModel = productViewModel
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(productTableView)
        productTableView.frame = view.bounds
        bindTableData()
    }
    
    func bindTableData() {
        
    }
}
