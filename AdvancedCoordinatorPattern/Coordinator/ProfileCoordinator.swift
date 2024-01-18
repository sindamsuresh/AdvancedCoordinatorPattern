//
//  ProfileCoordinator.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/18/24.
//

import UIKit

class ProfileCoordinator: CoordinatorProtocol {
    var childerensCoordinator: [CoordinatorProtocol] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ProfileVC.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle.fill"), tag: 1)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
