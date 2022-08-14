//
//  PhotoPresenter.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol PhotoPresenterProtocol: class {
    func pressedBackButton()
    func configure()
    
    init(_ view: PhotoViewProtocol)
}

class PhotoPresenter: PhotoPresenterProtocol {
    weak var view: PhotoViewProtocol!
    var router: PhotoRouterProtocol!
    var interactor: PhotoInteractorProtocol!
    
    required init(_ view: PhotoViewProtocol) {
        self.view = view
    }
    
    func pressedBackButton() {
        router?.pressedBackBtn()
    }
    
    func configure() {
        view.setPhotoView(image: interactor.photoImage)
  }
}
