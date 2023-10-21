//
//  CountryListPageViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 16.09.23.
//

import UIKit

class CountryListPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var welcomeLoginLabel: UILabel!
    @IBOutlet weak var countryListTableView: UITableView!
    
    var welcomeLabelText = ""
    var newCountryArray = [CountryData]() // bosh bir array
    let countryRealData = CountryCityDataManager() // real datalar
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryListTableView.dataSource = self
        countryListTableView.delegate = self
        newCountryArray = countryRealData.countryArray
        welcomeLoginLabel.text = "Welcome \n \(welcomeLabelText)"

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        newCountryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let countryCell = tableView.dequeueReusableCell(withIdentifier: "CountryViewCell") as! CountryViewCell
        
        countryCell.countryListLabel.text = newCountryArray[indexPath.row].countryName
        countryCell.countryListImageView.image = UIImage(named: newCountryArray[indexPath.row].countryFlagName)
        countryCell.countryListImageView.layer.cornerRadius = 50
        return countryCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let citiesOfCountryController = storyboard?.instantiateViewController(withIdentifier: "CitiesofCountriesViewController") as! CitiesofCountriesViewController
        
        citiesOfCountryController.selected_country = newCountryArray[indexPath.row]
        navigationController?.show(citiesOfCountryController, sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0 {
//            return 100
//        }
        //return UITableView.automaticDimension // shekilde ishlemir
        return 70
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
