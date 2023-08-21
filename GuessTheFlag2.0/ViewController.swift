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
        titleLabel.text = "Titulo Teste"
        titleLabel.textColor = .red
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 24)
        
        return titleLabel
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        setupLayout()
    }
    
    func setupLayout(){
        view = UIView()
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        
        ])
        
    }
    


}

