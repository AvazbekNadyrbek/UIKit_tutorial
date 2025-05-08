//
//  DelegateDesignViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 07.05.25.
//

import UIKit



class DelegateDesignViewController: UIViewController {
    
    private var actionButtonView = ActionButtonView()
    
    private var textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(actionButtonView)
        actionButtonView.layer.shadowColor = UIColor.black.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        actionButtonView.layer.cornerRadius = 16
        
        actionButtonView.delegate = self
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 20).isActive = true
        
        textLabel.text = "Primary action button Tapped"
        textLabel.isHidden = false
        
    }
}
 
extension DelegateDesignViewController: ActionButtonViewDelegate {
    func onPrimatyTap() {
        print("Degubg: Primary Button Tapped in View Controller!")
        textLabel.isHidden = false
    }
    
    func onSecondaryTap() {
        print("Degubg: Secondary Button Tapped in View Controller!")
        textLabel.isHidden = true
    }
    
    
}
