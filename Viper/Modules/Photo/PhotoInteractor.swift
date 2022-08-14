//
//  PhotoInteractor.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol PhotoInteractorProtocol: class {
    var photoImage: UIImage {get}
    init(_ presenterPhoto: PhotoPresenterProtocol)
}

class PhotoInteractor: PhotoInteractorProtocol {
    
    required init(_ presenterPhoto: PhotoPresenterProtocol) {
        self.presenterPhoto = presenterPhoto
    }
    
    var entityPhoto: PhotoEntityProtocol = PhotoEntity()
    weak var presenterPhoto: PhotoPresenterProtocol?
    
    var photoImage: UIImage {get {return entityPhoto.photoImage}}
    
    
}
