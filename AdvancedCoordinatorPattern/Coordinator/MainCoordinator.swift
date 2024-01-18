//
//  MainCoordinator.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/16/24.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, CoordinatorProtocol, UINavigationControllerDelegate {
    var childerensCoordinator: [CoordinatorProtocol] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = HomeVC.instantiate()
        // for tab bar
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func productList(to productType: Int) {
        let child = ProductListCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        
        childerensCoordinator.append(child)
        child.seletedProductType = productType
        child.start()
    }
    
    func productInfo() {
//        let vc = ProductInfoVC.instantiate()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
    }
    
    func childDidFinish(_ child: CoordinatorProtocol) {
        for(index, coordinator) in childerensCoordinator.enumerated() {
            if (coordinator === child) {
                childerensCoordinator.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        // for push
        // fromVC is the previous vc(Home) from to new vc ProductListVC
        // ex HomeVC
        
        // for poping
        // fromVC is the previous vc(ProductListVC) from to new vc home
        guard let fromVC = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        // for push
        // HomeVC
        
        // for poping
        //ProductListVC
        //print(fromVC)
        
        
        // for push
        // here in navigationController we have HomeVC so true
        
        // for poping
        // we alredy removed ProductListVC so we get false
        if navigationController.viewControllers.contains(fromVC) {
            return
        }
        
        // this is operation is done for pop
        // here sending ProductsListVC to remove from child bcoz we are performing pop vc
        if let productListVC = fromVC as? ProductsListVC {
            childDidFinish(productListVC.coordinator!)
        }
    }
    
    
}
