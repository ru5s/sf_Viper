//
//  HomePresenter.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation

protocol HomePresenterProtocol: class {
    func configureView()
    func pressedLogOutBtn()
    func pressedShowPhotoBtn()
    init (_ view: HomeViewProtocol)
    
}

class HomePresenter: HomePresenterProtocol {
    
    var interactor: HomeInteractorProtocol!
    weak var view: HomeViewProtocol!
    var router: HomeRouterProtocol!
    
    required init(_ view: HomeViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view.setLogOutImage(image: interactor.logOut)
        view.setShowPhoto(image: interactor.showPhoto)
    }
    
    func pressedLogOutBtn() {
        router.previewPage()
    }
    
    func pressedShowPhotoBtn() {
        router.showPhotoPage()
    }
}
