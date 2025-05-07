//
//  TextFieldsViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 07.05.25.
//

import UIKit

class TextFieldsViewController: UIViewController {
    
    private var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search...."
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.returnKeyType = .search
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
}

#Preview {
    TextFieldsViewController()
}
