//
//  ComputerGuessVC.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import UIKit

class ComputerGuessVC: UIViewController {
    
    var presenter: ComputerGuessPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}


extension ComputerGuessVC: ComputerGuessVCProtocol {
}
