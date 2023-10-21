//
//  CountryViewCell.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 19.09.23.
//

import UIKit

class CountryViewCell: UITableViewCell {

    @IBOutlet weak var countryListImageView: UIImageView!
    @IBOutlet weak var countryListLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
