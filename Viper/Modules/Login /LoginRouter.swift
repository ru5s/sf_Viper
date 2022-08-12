//
//  LoginRouter.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol LoginRouteProtocol: class {
    init(_ viewController: LoginView)
    func openHomePage()
}

class LoginRoute: LoginRouteProtocol {
    
    weak var viewController: LoginView?
    
    required init(_ viewController: LoginView) {
        
        self.viewController = viewController
    }
    
    func openHomePage() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifier, sender: nil)
    }
    
    
}
