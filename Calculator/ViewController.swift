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
    
    let shape = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemYellow.cgColor , UIColor.systemOrange.cgColor]
        gradientLayer.locations = [0,1]
        gradientLayer.type = .axial
        gradientLayer.frame = view.bounds
        iconLogo.layer.addSublayer(gradientLayer)
        
        let circlePath = UIBezierPath(arcCenter: view.center, radius: 75, startAngle: 0, endAngle: .pi * 2, clockwise: true)
        
        shape.path = circlePath.cgPath
        shape.lineWidth = 4
        shape.strokeColor = UIColor.white.cgColor
        shape.fillColor = UIColor.clear.cgColor
        shape.strokeEnd = 0
        view.layer.addSublayer(shape)
        
       
            
            
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.fillBorder), userInfo: nil, repeats: false)
        
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(changeStoryboard), userInfo: nil, repeats: false)
    }
    
    @objc func fillBorder(){
        let animation = CABasicAnimation(keyPath: "strokeEnd")
         animation.toValue = 1
         animation.duration = 3
         animation.isRemovedOnCompletion = false
         animation.fillMode = .forwards
         shape.add(animation , forKey: "strokeEnd")
    }
    
    @objc func changeStoryboard(){
        
      
        
        let storyboard = UIStoryboard(name: "Calculator", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController") as UIViewController // Explicit cast is required here.
        viewController.modalTransitionStyle = .coverVertical
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
         
    }

 
    
}

