//
//  HomeRouter.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol HomeRouterProtocol: class {
    init(_ viewController: HomeView)
    
    func showPhotoPage()
    func previewPage()
}

class HomeRouter: HomeRouterProtocol {
    required init(_ viewController: HomeView) {
        self.viewController = viewController
    }
    weak var viewController: HomeView?
    
    func showPhotoPage() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifier, sender: nil)
    }
    
    func previewPage() {
        viewController?.performSegue(withIdentifier: viewController!.homeSegueIdentifier, sender: nil)
    }
}
