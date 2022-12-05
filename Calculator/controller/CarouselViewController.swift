//
//  CarouselViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 01/12/22.
//

import UIKit

class CarouselViewController: UIViewController {
    
    @IBOutlet weak var collectionView : UICollectionView!
    
    var content = CarouselContent.fetchImages()

       override func viewDidLoad() {
           super.viewDidLoad()
           
           collectionView.dataSource = self
           
       }
       
     
}
extension CarouselViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        content.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell", for: indexPath) as! ContentCollectionViewCell
        
        let content = content[indexPath.row]
        cell.carouselContent = content
        return cell
    }
    
    
}
