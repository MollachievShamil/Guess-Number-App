//
//  FirstVCPresenter.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import Foundation
import UIKit

protocol FirstViewProtocol: AnyObject {
    
}

protocol FirstPresenterProtocol: AnyObject{
    init(view: FirstViewProtocol, router: RouterProtocol)
    func goToNextVC()
}

class FirstPresenter: FirstPresenterProtocol {
  
    
    weak var view: FirstViewProtocol?
    let router: RouterProtocol?
    
    required init(view: FirstViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router

    }
    
    func goToNextVC() {
        router?.goToEnterNumberVC()
    }
    
}
