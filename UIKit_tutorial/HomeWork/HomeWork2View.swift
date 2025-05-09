//
//  HomeWork2View.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 09.05.25.
//

import UIKit

class HomeWork2View: UIViewController {
    
    private var verticalStackView: UIStackView = {
        let verticalView = UIStackView()
        verticalView.axis = .vertical
        verticalView.alignment = .center
        verticalView.distribution = .fillEqually
        verticalView.translatesAutoresizingMaskIntoConstraints = false
        // ADD: Можно добавить spacing если нужно расстояние между элементами в verticalStackView
        verticalView.spacing = 5
        return verticalView
    }()
    
    private var horizontalStackView: UIStackView = {
        let horizontalView = UIStackView()
        horizontalView.axis = .horizontal
        horizontalView.translatesAutoresizingMaskIntoConstraints = false
        horizontalView.alignment = .center
        horizontalView.distribution = .fillEqually // Changed to fillEqually for equal width distribution
        horizontalView.spacing = 0 // Remove spacing between elements since we want equal distribution
        return horizontalView
    }()
    
    private var textLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        
        return label
    }()
    
    private var textLabel2: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - SECOND VERTICAL STACK -------------------------------------------------
    // ADD: ещё один вертикальный стек, чтобы разместить его по-горизонтали рядом с первым
    private var verticalStackView2: UIStackView = {
        let verticalView = UIStackView()
        verticalView.axis = .vertical
        verticalView.alignment = .center
        verticalView.distribution = .fillEqually
        verticalView.translatesAutoresizingMaskIntoConstraints = false
        verticalView.spacing = 5
        return verticalView
    }()
    
    // ADD: лейблы для второго блока
    private var textLabel3: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    private var textLabel4: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var verticalStackView3: UIStackView = {
        let verticalView = UIStackView()
        verticalView.axis = .vertical
        verticalView.alignment = .center
        verticalView.distribution = .fillEqually
        verticalView.translatesAutoresizingMaskIntoConstraints = false
        verticalView.spacing = 5
        return verticalView
    }()
    
    // ADD: лейблы для второго блока
    private var textLabel5: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    private var textLabel6: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // ------------------------------------------------------------------------------
    
    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 18
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 350).isActive = true
        return button
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
    
    private var textAboutHeader: UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 20, weight: .bold)
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private var textAboutMain: UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 17, weight: .light)
        text.textColor = .black
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private var textAboutVerticalStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private var buttonCancel: UIButton = {
        let button = UIButton()
        button.setTitle("Выйти", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(horizontalStackView)
        
        horizontalStackView.addArrangedSubview(verticalStackView)
        horizontalStackView.addArrangedSubview(verticalStackView2)
        horizontalStackView.addArrangedSubview(verticalStackView3)
        
        configureLabels(title: "Подписок",
                        count: "105",
                        stackView: verticalStackView,
                        titleLabel: textLabel,
                        countLabel: textLabel2)
        
        configureLabels(title: "Подписчики",
                        count: "250",
                        stackView: verticalStackView2,
                        titleLabel: textLabel3,
                        countLabel: textLabel4)
        
        configureLabels(title: "Постов",
                        count: "300",
                        stackView: verticalStackView3,
                        titleLabel: textLabel5,
                        countLabel: textLabel6)
        
        NSLayoutConstraint.activate([
            
            horizontalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            horizontalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            // Remove fixed widths for vertical stacks since horizontalStackView.fillEqually will handle it
            verticalStackView.heightAnchor.constraint(equalToConstant: 50),
            verticalStackView2.heightAnchor.constraint(equalToConstant: 50),
            verticalStackView3.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        view.addSubview(button)
        button.setTitle( "Добавить пост", for: .normal)
        button.topAnchor.constraint(equalTo: horizontalStackView.bottomAnchor, constant: 40).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(textAboutVerticalStack)
        textAboutVerticalStack.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20).isActive = true
        textAboutVerticalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        textAboutVerticalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        configureAboutLabels(aboutTitle: "О себе", aboutText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eleifend fringilla ligula, eu tempor arcu porta a. Cras tristique metus non lacus blandit, mattis efficitur arcu rhoncus. Sed vel ligula non purus pulvinar bibendum ut et leo. Mauris commodo, nulla in commodo suscipit, ex diam vulputate mi, venenatis laoreet sapien lorem vel nibh. ", stackView: textAboutVerticalStack, titleLabel: textAboutHeader, aboutLabel: textAboutMain)

        view.addSubview(buttonCancel)
        buttonCancel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        buttonCancel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
      
    }
    
    // MARK: - Helpers --------------------------------------------------------------
    // CHANGE: универсальная версия, принимает стек и лейблы
    func configureLabels(title: String,
                         count: String,
                         stackView: UIStackView,
                         titleLabel: UILabel,
                         countLabel: UILabel) {
        titleLabel.text = title
        countLabel.text = count
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(countLabel)
    }
    
    func configureAboutLabels(aboutTitle: String,
                              aboutText: String,
                              stackView: UIStackView,
                              titleLabel: UILabel,
                              aboutLabel: UILabel) {
        textAboutMain.text = aboutText
        textAboutHeader.text = aboutTitle

        stackView.addArrangedSubview(textAboutHeader)
        stackView.addArrangedSubview(textAboutMain)
        
    }
}
    
 #Preview { // Оставляем закомментированным, так как это для SwiftUI
     HomeWork2View()
 }
