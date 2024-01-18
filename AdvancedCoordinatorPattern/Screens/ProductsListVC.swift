//
//  ProductsListVC.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/16/24.
//

import UIKit

class ProductsListVC: UIViewController, StorybordedProtocol {
    weak var coordinator: ProductListCoordinator?
    
    var selectedProductType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedProductType)
        // Do any additional setup after loading the view.
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinish()
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
