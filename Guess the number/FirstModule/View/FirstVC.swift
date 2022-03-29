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
        addSubViews()
        setConstraints()
        Calculation.shared.getRandomNumber()
        
    }
    
    let startGameButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Start New Game", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(startNewGameTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func startNewGameTapped() {
        presenter.goToNextVC()
    }
}

extension FirstVC {
    
    func addSubViews() {
       // view.addSubview(gameNameLabel)
        view.addSubview(startGameButton)
        view.backgroundColor = .lightGray
        navigationItem.title = "gameName"
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            startGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startGameButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            startGameButton.heightAnchor.constraint(equalToConstant: 50),
            startGameButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
        
extension FirstVC: FirstViewProtocol {
}
