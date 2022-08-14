//
//  LoginView.swift
//  Viper
//
//  Created by Ruslan Ismailov on 12/08/22.
//

import UIKit

//Этот протокол будет иметь один метод, который будет устанавливать изображение для нашей кнопки
protocol LoginViewProtocol: class {
    func setLoginbuttonImage(image: UIImage)
}

class LoginView: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    let segueIdentifier = "LoginToHome"
    
    //Это нужно для того, чтобы сообщить Presenter о том, что произошло какое-то изменение на экране.
    var presenter: LoginPresenterProtocol!
    
    //Чтобы все связи были проброшены по файлам, конечно же, необходимо объявить экземпляр класса assambly. Он нужен для того, чтобы вы могли сделать сборку модуля.
    var assambly: LoginAssemblyProtocol = LoginAssembly()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        assambly.configure(view: self)
        
        presenter.configureView()
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        presenter.loginPressed()
    }
    
}

extension LoginView: LoginViewProtocol{
    
    func setLoginbuttonImage(image: UIImage) {
        
//        loginBtn.setBackgroundImage(image, for: .normal)
        loginBtn.setImage(image, for: .normal)
        
        
    }
}
