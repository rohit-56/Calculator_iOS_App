//
//  GradientViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 02/11/22.
//

import UIKit

class GradientViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var backImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

   
               let initialColor = UIColor.blue // our initial color
               let finalColor = UIColor.purple // our final color
               
               let gradientLayer = CAGradientLayer()
               gradientLayer.type = .axial
               gradientLayer.colors = [initialColor.withAlphaComponent(0.8).cgColor, finalColor.withAlphaComponent(0.8).cgColor]
               gradientLayer.locations = [0, 1]
               gradientLayer.frame = backImage.bounds
               backImage.layer.addSublayer(gradientLayer)
        
       // username.borderStyle = .init(rawValue: 3) ?? 4
        username.attributedPlaceholder = NSAttributedString(
            string: "Username",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        username.layer.cornerRadius = 25.0
        username.layer.borderColor = UIColor.white.cgColor
        username.layer.borderWidth = 1.0
        
        password.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        password.layer.borderColor = UIColor.white.cgColor
        password.layer.borderWidth = 1.0
        
       
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
