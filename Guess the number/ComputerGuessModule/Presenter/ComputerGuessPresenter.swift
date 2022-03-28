//
//  ComputerGuessPresenter.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import Foundation
import UIKit

protocol ComputerGuessVCProtocol: AnyObject {
    
}

protocol ComputerGuessPresenterProtocol: AnyObject{
    init(view: ComputerGuessVCProtocol, router: RouterProtocol)
    func goToEndGameVC()
}

class ComputerGuessPresenter: ComputerGuessPresenterProtocol {
  
    
    weak var view: ComputerGuessVCProtocol?
    let router: RouterProtocol?
    
    required init(view: ComputerGuessVCProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }

    func goToEndGameVC() {
        router?.goToEndGameVC()
    }
}
