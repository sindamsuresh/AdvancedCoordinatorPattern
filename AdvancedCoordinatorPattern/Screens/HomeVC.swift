//
//  ViewController.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/15/24.
//

import UIKit

class HomeVC: UIViewController, StorybordedProtocol {
    
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        //view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }

    @IBAction func productListBtnAction(_ sender: UIButton) {
        coordinator?.productList(to: segmentControl.selectedSegmentIndex)
    }
    
    
    @IBAction func productInfoBtnAction(_ sender: UIButton) {
        coordinator?.productInfo()
    }
    
    
}

