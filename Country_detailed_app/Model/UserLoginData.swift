//
//  UserLoginData.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 16.09.23.
//

import Foundation

struct UserLoginData {
    var email: String
    var password: String
    var fullname: String
    
    func checkLogin(newEmail:String, newPassword:String) -> String {
        let usersArray = [UserLoginData(email: "naz@gmail.com", password: "1234", fullname: "nazrin dolkhanova"),
                          UserLoginData(email: "tarlan@gmail.com", password: "1234",fullname: "tarlan suttanli"),
                          UserLoginData(email: "1", password: "1",fullname: "Nazrin Sultashka")]
        
        for i in 0..<usersArray.count {
            if ( usersArray[i].email == newEmail && usersArray[i].password == newPassword ){
                return usersArray[i].fullname
            }
        }
        
        return ""
    }
    /*
    func checkLogin() -> Bool {
        
        if (!email.contains("@") && !email.contains(".")) || (email.isEmpty || password.isEmpty ) || (password.count < 5 && password.count >= 10){
            return true
        }
        
        else {
            return false
        }
        
    }
     */
    
    
}

