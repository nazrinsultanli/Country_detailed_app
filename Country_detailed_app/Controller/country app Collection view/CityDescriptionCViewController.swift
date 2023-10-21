//
//  CityDescriptionCViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 24.09.23.
//

import UIKit

class CityDescriptionCViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    

    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var specificCity : CityData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
 
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let descriptionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DescriptionCollectionViewCell", for: indexPath) as! DescriptionCollectionViewCell
        
        descriptionCell.descriptionLabel.text = specificCity?.description
        
        
        descriptionCell.imageView.image = UIImage (named: specificCity?.imageName ?? "")
        return descriptionCell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
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
