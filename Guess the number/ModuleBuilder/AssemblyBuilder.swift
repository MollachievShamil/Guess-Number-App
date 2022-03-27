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

}

class AssemblyModelBuilder: AssemblyBuilderProtocol {
    
    func createFirst(router: RouterProtocol) -> UIViewController {
        let view = FirstVC()
        let networkService = NetworkService()
        let presenter = FirstPresenter(view: view, router: router, networkService: networkService)
        view.presenter = presenter
        return view
    }
}
