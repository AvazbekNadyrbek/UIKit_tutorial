//
//  StacksViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 07.05.25.
//

import UIKit

class StacksViewController: UIViewController {
    
    private var verticalStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical // in SwiftUI VStack {}
        stack.spacing = 16
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let rect1 = createRectangle()
        rect1.backgroundColor = .red
        
        let rect2 = createRectangle()
        rect2.backgroundColor = .blue
        
        let rect3 = createRectangle()
        rect3.backgroundColor = .green
        
        verticalStackView.addArrangedSubview(rect1)
        verticalStackView.addArrangedSubview(rect2)
        verticalStackView.addArrangedSubview(rect3)
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(verticalStackView)
        verticalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        verticalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.cornerRadius = 16
        return view
    }
    
}

#Preview {
    StacksViewController()
}
