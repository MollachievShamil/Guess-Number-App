//
//  EnterNumberVCPresenter.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import Foundation
import UIKit

protocol SelectVCProtocol: AnyObject {
    
}

protocol SelectPresenterProtocol: AnyObject{
    init(view: SelectVCProtocol, router: RouterProtocol)
    func goToComputerGuess()
    func goToUserGuess()
}

class SelectPresenter: SelectPresenterProtocol {
  
    
    weak var view: SelectVCProtocol?
    let router: RouterProtocol?
    
    required init(view: SelectVCProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }

    func goToComputerGuess() {
        router?.goToComputerGuessVC()
    }
    
    func goToUserGuess() {
        router?.goToUserGuessVC()
    }
    
}
