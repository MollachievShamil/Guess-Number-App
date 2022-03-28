//
//  EndGameVC.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 28.03.2022.
//
import UIKit

class EndGameVC: UIViewController {
    
    var presenter: EndGamePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

extension EndGameVC: EndGameVCProtocol {
}
