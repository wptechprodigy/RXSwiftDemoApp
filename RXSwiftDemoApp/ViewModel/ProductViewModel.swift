//
//  ProductViewModel.swift
//  RXSwiftDemoApp
//
//  Created by waheedCodes on 06/04/2021.
//

import Foundation
import RxSwift
import RxCocoa

struct ProductViewModel {
    var items = PublishSubject<[Product]>()
    
    func fetchItems() {
        let products = [
            Product(imageName: "house", title: "Home"),
            Product(imageName: "person.circle", title: "Profile"),
            Product(imageName: "airplane", title: "Flights"),
            Product(imageName: "bell", title: "Activity"),
            Product(imageName: "gear", title: "Settings")
        ]
        
        items.onNext(products)
        items.onCompleted()
    }
}
