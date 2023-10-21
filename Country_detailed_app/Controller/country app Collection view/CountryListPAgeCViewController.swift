//
//  CountryListPAgeCViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 24.09.23.
//
/*
 1. create storyboard and viewcontroller, assign class and ID
 2. add tableview, add cell, create cell swift file, assign class and identifier
 3. add items to inside cell and give constraints, connect them to cell swift file
 4. in viewController, add delegates and datasourses, and initialize them with tableview variable.
 5. give number of rows
 6. handle the data in cell format item function
 
 */
import UIKit

class CountryListPAgeCViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, fra{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var newCountryArray = [CountryData]() // bosh bir array
    let countryRealData = CountryCityDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        newCountryArray = countryRealData.countryArray
        title = "Welcome"
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        newCountryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryAppCollectionViewCell", for: indexPath) as! CountryAppCollectionViewCell
        
        collectionCell.labelView.text = newCountryArray[indexPath.row].countryName
        collectionCell.imageView.image = UIImage(named: newCountryArray[indexPath.row].countryFlagName)
        collectionCell.imageView.layer.cornerRadius = 50
        return collectionCell
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 100)
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let citiesOfCountryController = storyboard?.instantiateViewController(withIdentifier: "CitiesofCountriesCViewController") as! CitiesofCountriesCViewController
        
        citiesOfCountryController.selected_country = newCountryArray[indexPath.row]
        navigationController?.show(citiesOfCountryController, sender: nil)
        
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
