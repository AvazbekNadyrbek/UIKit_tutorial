//
//  ScrollViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 07.05.25.
//

import UIKit

class ScrollViewController: UIViewController {
    
    private var scrollView = UIScrollView()
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    private let rectHeight: CGFloat = 200
    private let numberOfRect: Int = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1 ... numberOfRect {
            let rect = createRect()
            stackView.addArrangedSubview(rect)
        }
        
        view.addSubview(scrollView)
        scrollView.delegate = self
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        
        scrollView.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        scrollView.contentSize.height = (rectHeight * CGFloat(numberOfRect)) + 64
        
    }
    
    private func createRect() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = 16
        
        return view
    }

}

extension ScrollViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("DEBUG: Scroll offset \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("Scrollview did and did end decelerating")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("ScrollView did end dragging")
    }
}

#Preview {
    ScrollViewController()
}
