//
//  UserGuessPresenter.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import Foundation
import UIKit

protocol UserGuessVCProtocol: AnyObject {
    
}

protocol UserGuessPresenterProtocol: AnyObject{
    init(view: UserGuessVCProtocol, router: RouterProtocol)
    func goToNextScreen()
    func goToEndGameScreen()
}

class UserGuessPresenter: UserGuessPresenterProtocol {
  
    
    weak var view: UserGuessVCProtocol?
    let router: RouterProtocol?
    
    required init(view: UserGuessVCProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }
    
    func goToNextScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.router?.goToComputerGuessVC()
        }
      
    }
    
    func goToEndGameScreen() {
        router?.goToEndGameVC(text: "You win")
    }
}
