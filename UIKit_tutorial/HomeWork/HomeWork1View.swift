//
//  HomeWork1View.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 08.05.25.
//

import UIKit

class HomeWork1View: UIViewController {
    
    private var textLabel = UILabel()
    private var textLabel2 = UILabel()
    private var textLabel3 = UILabel()
    private var button = UIButton()
    
    private var verticalStackTop: UIStackView = {
       let verticalStack = UIStackView()
        verticalStack.axis = .vertical
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        verticalStack.spacing = 10
        verticalStack.alignment = .leading
        return verticalStack
    }()
    
    private var verticalStackButton: UIStackView = {
       let verticalStack = UIStackView()
        verticalStack.axis = .vertical
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        verticalStack.spacing = 10
        verticalStack.alignment = .fill
        return verticalStack
    }()
    
    private var horizontalStack: UIStackView = {
        let horizontalStack = UIStackView()
        horizontalStack.axis = .horizontal
        horizontalStack.translatesAutoresizingMaskIntoConstraints = false
        return horizontalStack
    }()
    
    private var buttonMain: UIButton = {
        let buttonMain = UIButton()
        buttonMain.setTitle("Добавить данные", for: .normal)
        buttonMain.backgroundColor = .black
        buttonMain.layer.cornerRadius = 18
        buttonMain.translatesAutoresizingMaskIntoConstraints = false
        buttonMain.heightAnchor.constraint(equalToConstant: 80).isActive = true
        return buttonMain
    }()
    
    private var buttonClear: UIButton = {
        let buttonClear = UIButton()
        buttonClear.setTitle("Очистить данные", for: .normal)
        buttonClear.setTitleColor(.systemBlue, for: .normal)
        buttonClear.translatesAutoresizingMaskIntoConstraints = false
        return buttonClear
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(verticalStackTop)
        
        NSLayoutConstraint.activate([
            verticalStackTop.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verticalStackTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            verticalStackTop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
        ])
        
        let first = setupLabel("Имя", "Name")
        let firstSecond = setupLabel("Фамилия", "Surname")
        let firstThird = setupLabel("Номер потока", "9")
        
        verticalStackTop.addArrangedSubview(first)
        verticalStackTop.addArrangedSubview(firstSecond)
        verticalStackTop.addArrangedSubview(firstThird)
        
        view.addSubview(verticalStackButton)
        
        NSLayoutConstraint.activate([
            verticalStackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            verticalStackButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            verticalStackButton.topAnchor.constraint(greaterThanOrEqualTo: verticalStackTop.bottomAnchor, constant: 20),
            verticalStackButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
        let button1 = buttonMain
        let button2 = buttonClear
        
        verticalStackButton.addArrangedSubview(button1)
        verticalStackButton.addArrangedSubview(button2)
        
        
    }
    
    func setupLabel(_ firstName: String? = nil, _ secondName: String? = nil) -> UILabel {
        let label = UILabel()
        
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        
        let firstPartText = "\(firstName ?? "Nill"): "
        let secondPartText = secondName ?? "Nill"
        
        let attributedString = NSMutableAttributedString(string: firstPartText)
        
        let secondPartAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.red,
            .font: UIFont.boldSystemFont(ofSize: 25),
        ]
        let secondPartAttributedString = NSAttributedString(string: secondPartText, attributes: secondPartAttributes)
        
        attributedString.append(secondPartAttributedString)
        
        label.attributedText = attributedString
        return label
    }
    
}

#Preview {
    HomeWork1View()
}
