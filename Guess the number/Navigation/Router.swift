//
//  Router.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import Foundation
import UIKit

protocol RouterMain {
    var navigationController: UINavigationController? {get set}
    var assemblyBuilder: AssemblyBuilderProtocol? {get set}
}

protocol RouterProtocol: RouterMain {
    func firstVC()
    func goToEnterNumberVC()
    func goToComputerGuessVC()
    func goToUserGuessVC()
    func goToEndGameVC(text: String)
    func popToRoot() 
}

class Router: RouterProtocol {
    
    var navigationController: UINavigationController?
    var assemblyBuilder: AssemblyBuilderProtocol?
    
    init(navigationController: UINavigationController, assemblyBuilder: AssemblyBuilderProtocol){
        self.navigationController = navigationController
        self.assemblyBuilder = assemblyBuilder
    }
    
    func firstVC() {
        if let navigationController = navigationController {
            guard let firstVC = assemblyBuilder?.createFirst(router: self) else {return}
            navigationController.viewControllers = [firstVC]
        }
    }
    
    func goToEnterNumberVC() {
      
        if let navigationController = navigationController {
            guard let EnterNumberVC = assemblyBuilder?.createEnterNumberVC(router: self) else {return}
            navigationController.pushViewController(EnterNumberVC, animated: true)
        }
    }
    
    func goToComputerGuessVC() {
      
        if let navigationController = navigationController {
            guard let ComputerGuessVC = assemblyBuilder?.createComputerGuessVC(router: self) else {return}
            navigationController.pushViewController(ComputerGuessVC, animated: true)
        }
    }
    
    
    func goToUserGuessVC() {
      
        if let navigationController = navigationController {
            guard let UserGuessVC = assemblyBuilder?.createUserGuessVC(router: self) else {return}
            navigationController.pushViewController(UserGuessVC, animated: true)
        }
    }
    
    func goToEndGameVC(text: String) {
      
        if let navigationController = navigationController {
            guard let EndGameVC = assemblyBuilder?.createEndGameVC(router: self, text: text) else {return}
            navigationController.pushViewController(EndGameVC, animated: true)
        }
    }
   
        func popToRoot() {
            if let navigationController = navigationController {
                navigationController.popToRootViewController(animated: true)
            }
        }
}
