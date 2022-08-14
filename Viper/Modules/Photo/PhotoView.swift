//
//  PhotoView.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import UIKit

protocol PhotoViewProtocol: class {
    func setPhotoView(image: UIImage)
}

class PhotoView: UIViewController {
    
    @IBOutlet weak var photoDoneBtn: UIButton!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var presenterPhoto: PhotoPresenterProtocol?
    var assamblyPhoto: PhotoAssemblyProtocol = PhotoAssembly()
    
    let segueIdentifierPhoto = "fromPhotoToHome"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assamblyPhoto.configuratedView(view: self)
        presenterPhoto?.configure()
        
    }
    
    @IBAction func photoDoneBtnPressed(_ sender: Any) {
        presenterPhoto?.pressedBackButton()
    }
    

}

extension PhotoView: PhotoViewProtocol {
    func setPhotoView(image: UIImage) {
        photoImageView.image = image
    }
}
