//
//  PhotoView.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import UIKit

protocol PhotoViewProtocol: class {
    
}

class PhotoView: UIViewController {
    
    @IBOutlet weak var photoDoneBtn: UIButton!
    
    @IBOutlet weak var PhotoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func photoDoneBtnPressed(_ sender: Any) {
    }
    

}

extension PhotoView: PhotoViewProtocol {
    
}
