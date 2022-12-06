//
//  AddComponentsFromViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 06/12/22.
//

import UIKit

class AddComponentsFromViewController: UIViewController {
    
 
    private var imageView : UIImageView = {
        let  imageView  = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "caro1")
        imageView.translatesAutoresizingMaskIntoConstraints = false // This is very important property as
        // MARK: You need to call this property so the image is added to your view
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       
        self.view.addSubview(imageView)
        applyConstraints()
        
    }
    
    func  applyConstraints(){
        let imageViewConstraints = [
            imageView.widthAnchor.constraint(equalToConstant: 300),
            imageView.heightAnchor.constraint(equalToConstant: 300),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 40)
        ]
        
        NSLayoutConstraint.activate(imageViewConstraints)
    }


}
