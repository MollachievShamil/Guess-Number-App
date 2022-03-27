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
        addSubViews()
        setConstraints()
    }
    
    let computerGuessLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "computer guesses"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "number is -27"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let biggerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(">", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(biggerButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func biggerButtonTapped() {
        
    }
    
    let lowerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("<", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(biggerButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func lowerButtonButtonTapped() {
        
    }

    
    let equalButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("=", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(biggerButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func equalButtonButtonTapped() {
        
    }
    
    var buttonsStackView = UIStackView()
    
}

extension ComputerGuessVC {
    
    func addSubViews() {
        buttonsStackView = UIStackView(arrangedSubviews: [biggerButton, equalButton, lowerButton],
                                       axis: .horizontal,
                                       spacing: 10,
                                       distribution: .fillEqually)
        
        view.addSubview(computerGuessLabel)
        view.addSubview(numberLabel)
        view.addSubview(buttonsStackView)
        view.backgroundColor = .lightGray
        navigationItem.hidesBackButton = true
        navigationItem.title = "Round #"
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            computerGuessLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            computerGuessLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            computerGuessLabel.heightAnchor.constraint(equalToConstant: 50),
            computerGuessLabel.widthAnchor.constraint(equalToConstant: 200)

        ])
        
        NSLayoutConstraint.activate([
            numberLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            numberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            numberLabel.heightAnchor.constraint(equalToConstant: 50),
            numberLabel.widthAnchor.constraint(equalToConstant: 200)

        ])
        
        NSLayoutConstraint.activate([
            buttonsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            buttonsStackView.heightAnchor.constraint(equalToConstant: 50),
            buttonsStackView.widthAnchor.constraint(equalToConstant: 300)
        ])
        
    }
}

extension ComputerGuessVC: ComputerGuessVCProtocol {
}
