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
    
    private var productViewModel: ProductViewModel
    private var bag = DisposeBag()
    
    init(productViewModel: ProductViewModel) {
        self.productViewModel = productViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.productViewModel = ProductViewModel()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(productTableView)
        productTableView.frame = view.bounds
        bindTableData()
    }
    
    func bindTableData() {
        // Bind items to table
        productViewModel.items.bind(
            to: productTableView.rx.items(
                cellIdentifier: "cellID",
                cellType: UITableViewCell.self)
        ) { row, productModel, cell in
            cell.textLabel?.text = productModel.title
            cell.imageView?.image = UIImage(systemName: productModel.imageName)
        }.disposed(by: bag)
        
        // Bind a model selected handler
        productTableView.rx.modelSelected(Product.self).bind { (product) in
            debugPrint(product.title)
        }.disposed(by: bag)
        
        // Fetch items using the ViewModel
        productViewModel.fetchItems()
    }
}
