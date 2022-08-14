//
//  PhotoRouter.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation

protocol PhotoRouterProtocol: class {
    func pressedBackBtn()
    init(_ viewController: PhotoView)
}

class PhotoRouter: PhotoRouterProtocol {
    weak var viewController: PhotoView?
    
    required init(_ viewController: PhotoView) {
        self.viewController = viewController
    }
    
    func pressedBackBtn() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifierPhoto, sender: nil)
    }
}
