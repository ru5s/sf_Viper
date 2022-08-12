//
//  HomeInteractor.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol HomeInteractorProtocol: class {
    var logOut: UIImage {get}
    var showPhoto: UIImage {get}
}

class HomeInteractor: HomeInteractorProtocol {
    
    var entity: HomeEntityProtocol!
    
    var logOut: UIImage {get {return entity.logOutBtnImage}}
    var showPhoto: UIImage {get {return entity.showPhotoBtnImage}}
}
