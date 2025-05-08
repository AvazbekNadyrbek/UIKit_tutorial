//
//  ActionButtonView.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 07.05.25.
//

import UIKit

protocol ActionButtonViewDelegate: AnyObject {
    func onPrimatyTap()
    func onSecondaryTap()
} 

class ActionButtonView: UIView {
    
    weak var delegate: ActionButtonViewDelegate?

    private var primaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Primary Action", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        return button
    }()
    
    private var secondaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Secondary Action", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        
        addSubview(primaryActionButton)
        primaryActionButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        primaryActionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        primaryActionButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        primaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        primaryActionButton.addTarget(self, action: #selector(handlePrimaryTap), for: .touchUpInside)
        
        
        addSubview(secondaryActionButton)
        secondaryActionButton.topAnchor.constraint(equalTo: primaryActionButton.bottomAnchor, constant: 16).isActive = true
        secondaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        secondaryActionButton.addTarget(self, action: #selector(handleSecondaryTap), for: .touchUpInside)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handlePrimaryTap() {
        delegate?.onPrimatyTap()
    }
    
    @objc func handleSecondaryTap() {
        delegate?.onSecondaryTap()
    }
    
}
