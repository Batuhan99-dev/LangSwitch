//
//  SigninModel.swift
//  LangSwitch
//
//  Created by Batuhan Yılmaz on 14.03.2023.
//

import Foundation
import Firebase

final class SigninViewModel: UIViewController {
    
    //MARK: - Creat User With Firebase
    
    func creatUser(email: String, password: String, completion: @escaping(Bool, Error? )-> (Void)) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error != nil {
                
                completion(false, error)
            }else {
                completion(true, nil)
            }
        }
    }
    
    
    
    
}


