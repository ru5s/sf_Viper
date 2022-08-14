//
//  HomeView.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import UIKit

protocol HomeViewProtocol: class {
    func setLogOutImage(image: UIImage)
    func setShowPhoto(image: UIImage)
}

class HomeView: UIViewController {
    
    let segueIdentifier = "HomeToPhoto"
    
    @IBOutlet weak var logOutBtn: UIButton!
    
    @IBOutlet weak var showPhotoBtn: UIButton!
    
    let homeSegueIdentifier = "backToFirstPage"
    
    var presenter: HomePresenterProtocol!
    var assembler: HomeAssemblyProtocol = HomeAssembly()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assembler.configureView(view: self)
        presenter.configureView()
        
    }
    @IBAction func logOutBtnPressed(_ sender: Any) {
        presenter.pressedLogOutBtn()
    }
    
    @IBAction func showPhotoBtnPressed(_ sender: Any) {
        presenter.pressedShowPhotoBtn()
    }
    

}

extension HomeView: HomeViewProtocol {
    func setLogOutImage(image: UIImage) {
        logOutBtn.setImage(image, for: .normal)
        
    }
    
    func setShowPhoto(image: UIImage) {
        showPhotoBtn.setImage(image, for: .normal)
    }
    
    
}
