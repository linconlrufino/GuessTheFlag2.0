//
//  ViewController.swift
//  GuessTheFlag2.0
//
//  Created by Linconl Rufino on 13/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var titleLabel : UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Country Selected"
        titleLabel.textColor = .black
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 24)
        
        return titleLabel
    }()
    
    private lazy var scoreLabel : UILabel = {
        let scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.text = "Score"
        scoreLabel.textColor = .black
        return scoreLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout(){
        view = UIView()
        view.backgroundColor = .corDeFundoTela
        
        view.addSubview(titleLabel)
        view.addSubview(scoreLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            scoreLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            scoreLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
    }

}

