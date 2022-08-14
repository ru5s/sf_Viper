//
//  PhotoEntity.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol PhotoEntityProtocol {
    var photoImage: UIImage {get}
}

struct PhotoEntity: PhotoEntityProtocol {
    var photoImage: UIImage {get {return UIImage(imageLiteralResourceName: "female")}}
}
