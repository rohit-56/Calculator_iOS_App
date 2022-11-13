//
//  CompleteScreenViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 10/11/22.
//

import UIKit

class CompleteScreenViewController: UIViewController {
    
    @IBOutlet weak var backImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let initialColor = UIColor.blue // our initial color
        let finalColor = UIColor.purple // our final color
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.type = .axial
        gradientLayer.colors = [initialColor.withAlphaComponent(0.8).cgColor, finalColor.withAlphaComponent(0.8).cgColor]
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = backImage.bounds
        backImage.layer.addSublayer(gradientLayer)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
