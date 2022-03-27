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
}

class UserGuessPresenter: UserGuessPresenterProtocol {
  
    
    weak var view: UserGuessVCProtocol?
    let router: RouterProtocol?
    
    required init(view: UserGuessVCProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router

    }

    
}
