//
//  ViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 31/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var iconLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemBlue.cgColor , UIColor.systemPurple.cgColor]
        gradientLayer.locations = [0,1]
        gradientLayer.type = .axial
        gradientLayer.frame = view.bounds
        iconLogo.layer.addSublayer(gradientLayer)
        
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(changeStoryboard), userInfo: nil, repeats: false)
       
    }
    @objc func changeStoryboard(){
        
        background.layer.borderWidth = 1.0
        background.layer.backgroundColor = UIColor.white.cgColor
        let storyboard = UIStoryboard(name: "Calculator", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController") as UIViewController // Explicit cast is required here.
        viewController.modalTransitionStyle = .coverVertical
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }

 
    
}

