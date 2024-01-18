//
//  ProfileVC.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/18/24.
//

import UIKit

class ProfileVC: UIViewController, StorybordedProtocol {
    
    weak var coordinator: ProfileCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
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
