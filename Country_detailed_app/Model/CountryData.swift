//
//  CountryData.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 16.09.23.
//

import Foundation
struct CountryData {
    let countryName: String
    let countryCities: [CityData]
    let countryFlagName: String
}

struct CityData {
    let cityName: String
    let description: String
    let imageName: String
}
