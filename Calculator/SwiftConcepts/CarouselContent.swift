//
//  CarouselContent.swift
//  Calculator
//
//  Created by Rohit Sharma on 01/12/22.
//

import Foundation
import UIKit

class CarouselContent {
    
    var featuredImage : UIImage
    
    init(featuredImage: UIImage) {
        self.featuredImage = featuredImage
    }
    
    static func fetchImages() -> [CarouselContent]{
        return [CarouselContent(featuredImage: UIImage(named: "caro1")!)
                ,CarouselContent(featuredImage: UIImage(named: "caro2")!),
                CarouselContent(featuredImage: UIImage(named: "caro3")!)
                ,CarouselContent(featuredImage: UIImage(named: "caro4")!)]
    }
    
}
