//
//  CityDescriptionViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 20.09.23.
//

import UIKit

class CityDescriptionViewController: UIViewController {
    
    @IBOutlet weak var cityImage: UIImageView!
    
    @IBOutlet weak var cityDescriptionTextView: UITextView!
    @IBOutlet weak var cityDescriptionLabel: UILabel!
    
    var specificCity : CityData?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        cityDescriptionTextView.text = specificCity?.description
        cityImage.image = UIImage (named: specificCity?.imageName ?? "")

        // Do any additional setup after loading the view.
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
