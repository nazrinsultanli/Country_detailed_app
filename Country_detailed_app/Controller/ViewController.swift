//
//  ViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 16.09.23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var paswordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    @IBOutlet weak var secondTaskCVButton: UIButton!
    @IBOutlet weak var collectionViewButtton: UIButton!
    
    @IBOutlet weak var restTasksButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        
        emailTextField.delegate = self
        paswordTextField.delegate = self
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //textField.resignFirstResponder() // tek ishletsen, hansi textfielde bassan acilirbaglanir
        errorLabel.isHidden = true
        if textField == emailTextField {
            paswordTextField.becomeFirstResponder()
        }
        else {
            textField.resignFirstResponder()
        }
        return true
    }
    
    @IBAction func collectionViewClicked(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "CountryListPAgeCViewController") as! CountryListPAgeCViewController
        navigationController?.show(controller, sender: nil)
        
    }
    
    @IBAction func secondTaskCVClicked(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "CollectionViewController") as! CollectionViewController
        navigationController?.show(controller, sender: nil)
    }
    
    @IBAction func instaAndStarTasksClicked(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "instaStarViewController") as! instaStarViewController
        navigationController?.show(controller, sender: nil)
        
    }
    @IBAction func buttonClicked(_ sender: Any) {
        let newUserLoginData = UserLoginData(email: emailTextField.text ?? "", password: paswordTextField.text ?? "", fullname: "" )
        //let newUserLoginData : UserLoginData?
        //---------------duzeeeelt bunuuuuu-------------
        //print(userloginData.checkLogin() )
        
        if newUserLoginData.checkLogin(newEmail: emailTextField.text ?? "", newPassword: paswordTextField.text ?? "") == "" {
            errorLabel.isHidden = false
            errorLabel.text = "Yanlish login"
            
            }
        else {
            
            
            let countryPageController = storyboard?.instantiateViewController(withIdentifier: "CountryListPageViewController") as! CountryListPageViewController
            countryPageController.welcomeLabelText = newUserLoginData.checkLogin(newEmail: emailTextField.text ?? "", newPassword: paswordTextField.text ?? "")
            navigationController?.show(countryPageController, sender: nil)
        }
    }
}

