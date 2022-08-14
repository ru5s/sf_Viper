//
//  PhotoAssambly.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol PhotoAssemblyProtocol: class {
    func configuratedView(view: PhotoView)
}

class PhotoAssembly: PhotoAssemblyProtocol {
    weak var presenter: PhotoPresenterProtocol?
    
    func configuratedView(view: PhotoView) {
        let router = PhotoRouter(view)
        let presenter = PhotoPresenter(view)
        let interactor = PhotoInteractor(presenter)
        
        view.presenterPhoto = presenter
        presenter.router = router
        presenter.interactor = interactor
    }
    
    
}
