//
//  HomeEntity.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol HomeEntityProtocol {
    var logOutBtnImage: UIImage {get}
    var showPhotoBtnImage: UIImage {get}
}

struct HomeEntity: HomeEntityProtocol {
    var logOutBtnImage: UIImage {get {return UIImage(imageLiteralResourceName: "Logout")}}
    
    var showPhotoBtnImage: UIImage {get {return UIImage(imageLiteralResourceName: "showImage")}}
    
    
}
