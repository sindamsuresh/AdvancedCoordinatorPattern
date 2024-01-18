//
//  StorybordedProtocol.swift
//  AdvancedCoordinatorPattern
//
//  Created by Suresh Sindam on 1/16/24.
//

import Foundation
import UIKit

protocol StorybordedProtocol {
    static func instantiate() -> Self
}

extension StorybordedProtocol where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
}
