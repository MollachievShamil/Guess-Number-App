//
//  AssemblyBuilder.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import Foundation
import UIKit


protocol AssemblyBuilderProtocol {
    func createFirst(router: RouterProtocol) -> UIViewController
    func createEnterNumberVC(router: RouterProtocol) -> UIViewController
    func createComputerGuessVC(router: RouterProtocol) -> UIViewController
    func createUserGuessVC(router: RouterProtocol) -> UIViewController
}

class AssemblyModelBuilder: AssemblyBuilderProtocol {
    
    func createFirst(router: RouterProtocol) -> UIViewController {
        let view = FirstVC()
        let presenter = FirstPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    
    func createEnterNumberVC(router: RouterProtocol) -> UIViewController{
        let view = EnterNumberVC()
        let presenter = EnterNumberPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    func createComputerGuessVC(router: RouterProtocol) -> UIViewController{
        let view = ComputerGuessVC()
        let presenter = ComputerGuessPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    func createUserGuessVC(router: RouterProtocol) -> UIViewController{
        let view = UserGuessVC()
        let presenter = UserGuessPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
}
