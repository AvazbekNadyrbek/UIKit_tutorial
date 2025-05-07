//
//  ButtonViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 06.05.25.
//

import UIKit

class ButtonViewController: UIViewController {
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show name ", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showNameTapped), for: .touchUpInside)
        return button
    }()
    
    private var nameLabel: UILabel = {
        let button = UILabel()
        button.text = "My name is Avazbek"
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = true
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

//        showNameButton.addTarget(self, action: #selector(showNameTapped), for: .touchUpInside)
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo:showNameButton.bottomAnchor, constant: 16).isActive = true
        
        
        
    }
    
    @objc func showNameTapped() {
        
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show name" : "Hide name"
        showNameButton.setTitle(title, for: .normal)
    }
}

#Preview {
    ButtonViewController()
}
