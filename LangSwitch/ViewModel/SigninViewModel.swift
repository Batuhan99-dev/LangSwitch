//
//  SigninModel.swift
//  LangSwitch
//
//  Created by Batuhan Yılmaz on 14.03.2023.
//

import Foundation
import Firebase
import UIKit

final class SigninViewModel {
//    var sigininscreen = SigninScreen()
   
    
    func creatUser(email: String, password: String, completion: @escaping(Bool)-> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                   if let e = error {
                       print(e)
                       completion(false)
                   } else {
                    completion(true)
                   }
               }
    }

    
    
        
    }
    

