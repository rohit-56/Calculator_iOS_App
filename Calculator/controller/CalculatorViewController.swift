//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 17/11/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        learnSwift()
    }
    func learnSwift() -> Int{
        let e1 = Employee(empName: "Rohit", designation: "Software Engineer")
        e1.email = "rohit@gmail.com"
        let e2 = Employee(empName: "Rahul", designation: "AE")
        
        print("Employee e1 Name \(String(describing: e1.empName)) and Employee e2 Name \(String(describing: e2.empName)) and again e1 \(String(describing: e1.email))")
        return 1;
    }
    
    //MARK: - All Button Actions are here
    
    @IBAction func submit(_ sender: Any) {
        let storyboard = UIStoryboard(name: "gradientView", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "GradientViewController") as UIViewController // Explicit cast is required here.
        viewController.modalTransitionStyle = .coverVertical
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }

}
