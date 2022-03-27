//
//  UserGuessVC.swift
//  Guess the number
//
//  Created by Шамиль Моллачиев on 27.03.2022.
//

import UIKit

class UserGuessVC: UIViewController {
    
    var presenter: UserGuessPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        setConstraints()
    }
    
    let userGuessLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "you guess"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let numberIsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "number is (< = >)"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let enterNumberButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Enter the number", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(enterNumberTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func enterNumberTapped() {
        alertOk(title: "dsds", massege: "Sdsd")
    }
}

extension UserGuessVC {
    
    func addSubViews() {
        
        view.addSubview(userGuessLabel)
        view.addSubview(numberIsLabel)
        view.addSubview(enterNumberButton)
        
        view.backgroundColor = .lightGray
        navigationItem.hidesBackButton = true
        navigationItem.title = "Round #"
    }

func setConstraints() {
    
    NSLayoutConstraint.activate([
        userGuessLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        userGuessLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        userGuessLabel.heightAnchor.constraint(equalToConstant: 50),
        userGuessLabel.widthAnchor.constraint(equalToConstant: 200)
    ])
    
    NSLayoutConstraint.activate([
        numberIsLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
        numberIsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        numberIsLabel.heightAnchor.constraint(equalToConstant: 50),
        numberIsLabel.widthAnchor.constraint(equalToConstant: 200)

    ])
    
    NSLayoutConstraint.activate([
        enterNumberButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        enterNumberButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        enterNumberButton.heightAnchor.constraint(equalToConstant: 50),
        enterNumberButton.widthAnchor.constraint(equalToConstant: 200)

    ])
}
}

extension UserGuessVC: UserGuessVCProtocol {
}
