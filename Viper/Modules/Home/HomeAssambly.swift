//
//  HomeAssambly.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation

protocol HomeAssemblyProtocol: class {
    func configureView(view: HomeView)
    
}

class HomeAssembly: HomeAssemblyProtocol {
    weak var presenter: HomePresenterProtocol?
    
    
    
    func configureView(view: HomeView) {
        let presenter = HomePresenter(view)
        let interactor = HomeInteractor(presenter)
        let router = HomeRouter(view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
