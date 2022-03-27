//
//  FirstVC.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import UIKit

class FirstVC: UIViewController {
    
    var presenter: FirstPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
}

extension FirstVC: FirstViewProtocol {
}
