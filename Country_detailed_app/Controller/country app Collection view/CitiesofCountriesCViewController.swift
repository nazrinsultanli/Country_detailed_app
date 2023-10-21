//
//  CitiesofCountriesCViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 24.09.23.
//

import UIKit

class CitiesofCountriesCViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var citiesCollectionView: UICollectionView!
    
    var selected_country : CountryData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selected_country?.countryName
        citiesCollectionView.dataSource = self
        citiesCollectionView.delegate = self

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        selected_country?.countryCities.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let citiesListCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CitiesOfCollectionViewCell", for: indexPath) as! CitiesOfCollectionViewCell
        
        citiesListCell.countryNameLabel.text = selected_country?.countryCities[indexPath.row].cityName
        
        return citiesListCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let descriptionController = storyboard?.instantiateViewController(withIdentifier: "CityDescriptionCViewController") as! CityDescriptionCViewController
        descriptionController.specificCity = selected_country?.countryCities[indexPath.row]
        navigationController?.show(descriptionController, sender: nil)
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
