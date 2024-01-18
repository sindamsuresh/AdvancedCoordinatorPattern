//
//  CoordinatorProtocol.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/16/24.
//

import Foundation
import UIKit

protocol CoordinatorProtocol: AnyObject {
    var childerensCoordinator: [CoordinatorProtocol] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
