//
//  HomePresenter.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation

protocol HomePresenterProtocol: class {
    func configureView()
//    func pressedLogOutBtn()
//    func pressedShowPhotoBtn()
    
}

class HomePresenter: HomePresenterProtocol {
    
    var interactor: HomeInteractorProtocol!
    weak var view: HomeViewProtocol!
    
    func configureView() {
        view.setLogOutImage(image: interactor.logOut)
        view.setShowPhoto(image: interactor.showPhoto)
    }
    
//    func pressedLogOutBtn() {
//        <#code#>
//    }
//    
//    func pressedShowPhotoBtn() {
//        <#code#>
//    }
}
