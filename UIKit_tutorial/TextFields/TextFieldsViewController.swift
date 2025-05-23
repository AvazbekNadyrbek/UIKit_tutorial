//
//  TextFieldsViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 07.05.25.
//

import UIKit

class TextFieldsViewController: UIViewController {
    
    private lazy var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search...."
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.returnKeyType = .search
        tf.delegate = self
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        print("DEBUG: return key pressed..")
    }
}

extension TextFieldsViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("DEBUG: return key pressed..")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("DEBUG: Did begin editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("DEBUG: Did end editing")
    }
}

#Preview {
    TextFieldsViewController()
}
