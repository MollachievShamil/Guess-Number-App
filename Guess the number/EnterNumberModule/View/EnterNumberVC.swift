//
//  EnterNumberVC.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import UIKit

class EnterNumberVC: UIViewController {
    
    var presenter: EnterNumberPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        setConstraints()
    }
  
    
    let guessTheNumberButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Guess the number", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(guessTheNumberTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func guessTheNumberTapped() {
        presenter.goToComputerGuess()
    }
    
    
    let enterTheNumberButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Enter the number", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(enterTheNumberTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func enterTheNumberTapped() {
       
    }
}

extension EnterNumberVC {
    
    func addSubViews() {
        view.addSubview(guessTheNumberButton)
        view.addSubview(enterTheNumberButton)
        view.backgroundColor = .lightGray
        navigationItem.hidesBackButton = true
        navigationItem.title = "Round #"
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            guessTheNumberButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            guessTheNumberButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            guessTheNumberButton.heightAnchor.constraint(equalToConstant: 50),
            guessTheNumberButton.widthAnchor.constraint(equalToConstant: 200)

        ])
        
        NSLayoutConstraint.activate([
            enterTheNumberButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterTheNumberButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            enterTheNumberButton.heightAnchor.constraint(equalToConstant: 50),
            enterTheNumberButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}


extension EnterNumberVC: EnterNumberVCProtocol {
}
