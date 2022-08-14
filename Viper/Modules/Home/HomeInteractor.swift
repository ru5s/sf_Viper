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
    
    init(_ presenter: HomePresenterProtocol)
}

class HomeInteractor: HomeInteractorProtocol {
    
    weak var presenter: HomePresenterProtocol?
    
    required init(_ presenter: HomePresenterProtocol) {
        self.presenter = presenter
    }
    
    var entity: HomeEntityProtocol = HomeEntity()
    
    var logOut: UIImage {get {return entity.logOutBtnImage}}
    var showPhoto: UIImage {get {return entity.showPhotoBtnImage}}
}
