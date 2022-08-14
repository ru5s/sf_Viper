//
//  LoginAssambly.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol LoginAssemblyProtocol: class {
    func configure(view: LoginView)
}

class LoginAssembly: LoginAssemblyProtocol {
    weak var presenter: LoginPresenterProtocol?
    
    func configure(view: LoginView) {
        
        let presenter = LoginPresenter(view)
        let interactor = LoginInteractor(presenter)
        let router = LoginRoute(view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        
        
    }
}
