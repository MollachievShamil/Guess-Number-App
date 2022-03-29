//
//  EndGamePresenter.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 28.03.2022.
//

import Foundation
import UIKit

protocol EndGameVCProtocol: AnyObject {
    
}

protocol EndGamePresenterProtocol: AnyObject{
    init(view: EndGameVCProtocol, router: RouterProtocol)
    func goToEnterNumberModule()
    func prepareForNewGame()
}

class EndGamePresenter: EndGamePresenterProtocol {
  
    
    weak var view: EndGameVCProtocol?
    let router: RouterProtocol?
    
    required init(view: EndGameVCProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }

    func goToEnterNumberModule() {
        router?.popToRoot()
    }
    
    func prepareForNewGame() {
        Calculation.shared.prepareForNewGame()
    }
    
}
