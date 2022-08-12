//
//  LoginInteractor.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import UIKit

protocol LoginInteractorProtocol: class {
    var login: UIImage {get}
    
    init(_ presenter: LoginPresenterProtocol)
}

class LoginInteractor: LoginInteractorProtocol {
    
    weak var presenter: LoginPresenterProtocol?
    
    required init(_ presenter: LoginPresenterProtocol) {
        
        self.presenter = presenter
    }
    
    let loginEntity: LoginEntityProtocol = LoginEntity()
    
    var login: UIImage {get {return loginEntity.loginImageForButton}}
    
    
    
    
    
    
}
