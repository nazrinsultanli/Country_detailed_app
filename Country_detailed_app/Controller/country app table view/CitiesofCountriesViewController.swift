//
//  CitiesofCountriesViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 20.09.23.
//

import UIKit

class CitiesofCountriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var citiesTableView: UITableView!
    
    
    var selected_country : CountryData?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selected_country?.countryName
        citiesTableView.dataSource = self
        citiesTableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selected_country?.countryCities.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let citiesListCell = tableView.dequeueReusableCell(withIdentifier: "CitiesListTableViewCell") as! CitiesListTableViewCell
        
        citiesListCell.listOfCitiesLabel.text = selected_country?.countryCities[indexPath.row].cityName
        
        return citiesListCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let descriptionController = storyboard?.instantiateViewController(withIdentifier: "CityDescriptionViewController") as! CityDescriptionViewController
        descriptionController.specificCity = selected_country?.countryCities[indexPath.row]
        navigationController?.show(descriptionController, sender: nil)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       100
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
