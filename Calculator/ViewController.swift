//
//  ViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 31/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    @IBAction func submit(_ sender: Any) {
        let storyboard = UIStoryboard(name: "gradientView", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "GradientViewController") as UIViewController // Explicit cast is required here.
        viewController.modalTransitionStyle = .coverVertical
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
}

