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
        
        learnSwift()
       
    }

    @IBAction func submit(_ sender: Any) {
        let storyboard = UIStoryboard(name: "CompleteScreenView", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CompleteScreenViewController") as UIViewController // Explicit cast is required here.
        viewController.modalTransitionStyle = .coverVertical
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    func learnSwift() -> Int{
        var e1 = Employee(empName: "Rohit", designation: "Software Engineer")
        e1.email = "rohit@gmail.com"
        var e2 = Employee(empName: "Rahul", designation: "AE")
        
        print("Employee e1 Name \(String(describing: e1.empName)) and Employee e2 Name \(String(describing: e2.empName)) and again e1 \(e1.email)")
        return 1;
    }
    
}

