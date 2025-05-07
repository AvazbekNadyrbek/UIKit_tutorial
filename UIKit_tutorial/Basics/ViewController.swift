//
//  ViewController.swift
//  UIKit_tutorial
//
//  Created by Авазбек Надырбек уулу on 05.05.25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var greedingLabel: UILabel!
    
    
    @IBOutlet weak var primaryButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // this is a difference between this two styles, declarative and imperative
//        VStack {
//            
//        }
//        .backgorud(Color.red)
        view.backgroundColor = .systemRed
        

         
    }
    
    func greetingUser(_ name: String) {
        greedingLabel.text = "Hello, \(name)"
    }

    @IBAction func primaryButtonTapped(_ sender: Any) {
        greetingUser("Avazbek! How are you today?")
        view.backgroundColor = .systemBlue
    }
    
}

