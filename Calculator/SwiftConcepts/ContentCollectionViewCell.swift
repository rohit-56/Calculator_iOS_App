//
//  ContentCollectionViewCell.swift
//  Calculator
//
//  Created by Rohit Sharma on 01/12/22.
//

import Foundation
import UIKit

class ContentCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView : UIImageView!
    
    var carouselContent : CarouselContent! {
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        if let carouselContent = carouselContent {
            featuredImageView.image = carouselContent.featuredImage
        }
        else{
            featuredImageView.image = nil
        }
        
        featuredImageView.layer.cornerRadius = 10.0
        featuredImageView.layer.masksToBounds = true
    }
}
