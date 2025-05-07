//
//  LabelTutorialViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 05.05.25.
//

import UIKit

class LabelTutorialViewController: UIViewController {
    
    private var textLabel = UILabel()
    
    private var subTitleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "This is a label and we are learning UIKIT"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        textLabel.text = "Hello, World!"
        textLabel.font = .systemFont(ofSize: 26)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subTitleLabel)
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 8).isActive = true
        subTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}


#Preview {
    LabelTutorialViewController()
}
