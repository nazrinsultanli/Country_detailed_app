//
//  CollectionViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 22.09.23.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
  
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var myTestLabel: UITextView!
    
    var countryArray = [CountryData]()
    let countryData = CountryCityDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self

        countryArray = countryData.countryArray
        myTestLabel.text = countryArray[0].countryCities[0].description
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        countryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "newCollectionViewCell", for: indexPath) as! newCollectionViewCell
        collectionCell.imageView.image = UIImage(named: countryArray[indexPath.item].countryFlagName)
        //collectionCell.myImageview.layer.cornerRadius = 35
        
        collectionCell.labelView.text = countryArray[indexPath.item].countryName
        
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width/2-10, height: collectionView.frame.width/2-10)
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CollectionCountrySpecificViewController") as! CollectionCountrySpecificViewController
        vc.didSelectedCountry = countryArray[indexPath.item]
        navigationController?.show(vc, sender: nil)
        
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
