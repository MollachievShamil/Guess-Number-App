//
//  EndGamePresenter.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 28.03.2022.
//

import Foundation
import UIKit

protocol EndGameVCProtocol: AnyObject {
    func getText(text: String)
}

protocol EndGamePresenterProtocol: AnyObject{
    init(view: EndGameVCProtocol, router: RouterProtocol, text: String)
    func goToEnterNumberModule()
    func prepareForNewGame()
}

class EndGamePresenter: EndGamePresenterProtocol {
  
    
    weak var view: EndGameVCProtocol?
    let router: RouterProtocol?
    let text: String?
    
    required init(view: EndGameVCProtocol, router: RouterProtocol, text: String) {
        self.view = view
        self.router = router
        self.text = text
        sendText()
    }

    func goToEnterNumberModule() {
        router?.popToRoot()
    }
    
    func prepareForNewGame() {
        Calculation.shared.prepareForNewGame()
    }
    
    func sendText() {
        view?.getText(text: text!)
    }
}
