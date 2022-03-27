//
//  EnterNumberVCPresenter.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import Foundation
import UIKit

protocol EnterNumberVCProtocol: AnyObject {
    
}

protocol EnterNumberPresenterProtocol: AnyObject{
    init(view: EnterNumberVCProtocol, router: RouterProtocol)
}

class EnterNumberVCPresenter: EnterNumberPresenterProtocol {
  
    
    weak var view: EnterNumberVCProtocol?
    let router: RouterProtocol?
    
    required init(view: EnterNumberVCProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router

    }

    
}
