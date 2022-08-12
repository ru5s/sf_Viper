//
//  LoginEntity.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import Foundation
import UIKit

protocol LoginEntityProtocol {
    var loginImageForButton: UIImage {get}
}

struct LoginEntity: LoginEntityProtocol {
    
    var loginImageForButton: UIImage { get { return UIImage(imageLiteralResourceName: "Login")}
        
    }
}



//imageLiteral(resourceName: "Login")
//_ImageLiteralType(imageLiteralResourceName: "Login")
