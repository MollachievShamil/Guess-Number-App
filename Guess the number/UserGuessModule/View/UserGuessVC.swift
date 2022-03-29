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
        Calculation.shared.getRandomNumber()
        
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
    
    let bigNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 60)
        label.textAlignment = .center
        return label
    }()
    
    @objc func enterNumberTapped() {
        alert(title: "Please enter any number")
    }
    
    func alert(title: String){
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        alert.addTextField { text in
            text.keyboardType = .numberPad
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert!.textFields![0]
            self.bigNumberLabel.text =  textField.text
            self.okButtonInAlertTapped(text: textField.text ?? "0")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    func okButtonInAlertTapped(text: String) {
        presenter.goToNextScreen()
        guard let int = Int(text) else { return }
        if int > Calculation.shared.randomNumber {
        }
        
    }
}

extension UserGuessVC {
    
    func addSubViews() {
        
        view.addSubview(userGuessLabel)
        view.addSubview(numberIsLabel)
        view.addSubview(enterNumberButton)
        view.addSubview(bigNumberLabel)
        
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
    
    NSLayoutConstraint.activate([
        bigNumberLabel.bottomAnchor.constraint(equalTo: enterNumberButton.topAnchor, constant: 0),
        bigNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        bigNumberLabel.heightAnchor.constraint(equalToConstant: 100),
        bigNumberLabel.widthAnchor.constraint(equalToConstant: 200)
    ])
}
}

extension UserGuessVC: UserGuessVCProtocol {
}
