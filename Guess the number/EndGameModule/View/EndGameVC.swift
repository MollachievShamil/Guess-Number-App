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
        addSubViews()
        setConstraints()
        presenter.prepareForNewGame()
    }
    
    let winLoseLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "You Lose"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let restartButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Start new game", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.addTarget(self, action: #selector(restartTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func restartTapped() {
        presenter.goToEnterNumberModule()
    }
}


extension EndGameVC {
    
    func addSubViews() {
        view.addSubview(winLoseLabel)
        view.addSubview(restartButton)
        view.backgroundColor = .lightGray
        navigationItem.hidesBackButton = true
        navigationItem.title = "Congradulations"
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            winLoseLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            winLoseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            winLoseLabel.heightAnchor.constraint(equalToConstant: 50),
            winLoseLabel.widthAnchor.constraint(equalToConstant: 200)

        ])
        
        NSLayoutConstraint.activate([
            restartButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            restartButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.widthAnchor.constraint(equalToConstant: 200)
        ])
        
    }
}
extension EndGameVC: EndGameVCProtocol {
}
