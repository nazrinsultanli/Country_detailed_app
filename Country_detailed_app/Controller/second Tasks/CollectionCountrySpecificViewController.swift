//
//  CollectionCountrySpecificViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 23.09.23.
//

import UIKit

class CollectionCountrySpecificViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    

    var didSelectedCountry: CountryData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = didSelectedCountry?.countryName


        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        didSelectedCountry?.countryCities.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCountryCitiesViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectioncountryCitiesViewCell", for: indexPath) as! CollectioncountryCitiesViewCell
        
        myCountryCitiesViewCell.ImageViewCell.image = UIImage(named: didSelectedCountry?.countryCities[indexPath.item].imageName ?? "")
        
        myCountryCitiesViewCell.labelview.text = didSelectedCountry?.countryCities[indexPath.item].cityName
        return myCountryCitiesViewCell
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width/2-10, height: collectionView.frame.width/2-10)
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
