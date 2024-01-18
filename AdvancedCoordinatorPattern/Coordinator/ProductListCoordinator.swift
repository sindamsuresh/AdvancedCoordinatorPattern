//
//  ProductListCoordinator.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/17/24.
//

import UIKit

class ProductListCoordinator: CoordinatorProtocol {
    weak var parentCoordinator: MainCoordinator?
    var childerensCoordinator: [CoordinatorProtocol] = []
    var seletedProductType: Int?
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let vc = ProductsListVC.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        vc.coordinator = self
        vc.selectedProductType = seletedProductType ?? 0
        navigationController.pushViewController(vc, animated: true)
    }
    
//    func didFinish() {
//        parentCoordinator?.childDidFinish(self)
//    }
    
    
}
