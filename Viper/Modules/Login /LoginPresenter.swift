//
//  LoginPresenter.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol LoginPresenterProtocol: class {
    init(_ view: LoginViewProtocol)
    func configureView()
    func loginPressed()
}

class LoginPresenter: LoginPresenterProtocol {
    
    required init(_ view: LoginViewProtocol) {
        self.view = view
    }
    
    var router: LoginRouteProtocol!
    
    func loginPressed() {
        router.openHomePage()
    }
    
    weak var view: LoginViewProtocol?
    
    var interactor: LoginInteractorProtocol!
    
    func configureView() {
        view?.setLoginbuttonImage(image: interactor.login)
    }
    
}
