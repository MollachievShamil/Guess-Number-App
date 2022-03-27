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
    init(view: FirstViewProtocol, router: RouterProtocol, networkService: NetworkServiceProtocol)
    
}

class FirstPresenter: FirstPresenterProtocol {
    
    weak var view: FirstViewProtocol?
    var networkService: NetworkServiceProtocol?
    let router: RouterProtocol?
    
    required init(view: FirstViewProtocol, router: RouterProtocol, networkService: NetworkServiceProtocol) {
        self.view = view
        self.router = router
        self.networkService = networkService
    }
    
}
