//
//  UIGradientImageView.swift
//  Calculator
//
//  Created by Rohit Sharma on 02/11/22.
//

import Foundation
import UIKit

class UIGradientImageView: UIImageView{
    
    let mygradientLayer: CAGradientLayer
    
    override init(frame: CGRect) {
        mygradientLayer = CAGradientLayer()
        super.init(frame: frame)
        self.setup()
        addGradientLayer()
    }
    
    func addGradientLayer(){
        if mygradientLayer.superlayer == nil{
            self.layer.addSublayer(mygradientLayer)
        }
    }
    
    required init(coder aDecoder: NSCoder){
        mygradientLayer = CAGradientLayer()
        super.init(coder: aDecoder)!
        self.setup()
        addGradientLayer()
        
    }
    func getColors() -> [CGColor]{
        return [UIColor.systemBlue.cgColor,UIColor.systemPurple.cgColor,UIColor(red: 0, green: 0, blue: 0, alpha: 0.6).cgColor]
    }
    
    func getLocations() -> [CGFloat]{
        return [0.4, 0.9]
    }
    func setup(){
       // mygradientLayer.startPoint = CGPoint(x: 0, y: 0)
        //mygradientLayer.endPoint = CGPoint(x: 0.6, y: 1)
        
        let colors = getColors()
        mygradientLayer.colors = colors
        mygradientLayer.isOpaque = false
      //  mygradientLayer.locations = getLocations() as [NSNumber]?
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mygradientLayer.frame = self.layer.bounds
    }
    
    
}
