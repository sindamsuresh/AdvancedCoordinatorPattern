//
//  CustomTabBarVC.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/18/24.
//

import UIKit

class CustomTabBarVC: UITabBarController {
    let main = MainCoordinator(navigationController: UINavigationController())
    let profile = ProfileCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        main.start()
        profile.start()
        viewControllers = [main.navigationController, profile.navigationController]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
