//
//  ShapesViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 07.05.25.
//

import UIKit

class ShapesViewController: UIViewController {
    
    private var rect: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemBlue
        return view
    }()
    
    private var circle = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.widthAnchor.constraint(equalToConstant: 200).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 200).isActive = true
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(circle)
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.widthAnchor.constraint(equalToConstant: 200).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        circle.backgroundColor = .systemRed
        circle.topAnchor.constraint(equalTo: rect.bottomAnchor, constant: 20).isActive = true
        circle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        circle.layer.cornerRadius = 200 / 4
    }

}
#Preview {
    ShapesViewController()
}
