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
    func goToUserGuess()
    func getNumber() -> String
    func numberIsLower()
    func numberIsBigger()
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
    
    func goToUserGuess(){
        router?.goToUserGuessVC()
    }
    
    func getNumber() -> String {
       return "Your number is " + String(Calculation.shared.computerGuessNumber) + " ?"
    }
    
    func numberIsLower() {
        Calculation.shared.numberIsLower()
    }
    
    func numberIsBigger() {
        Calculation.shared.numberIsBigger()
    }
}
