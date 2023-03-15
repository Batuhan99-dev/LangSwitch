//
//  SigninScreen.swift
//  LangSwitch
//
//  Created by Batuhan Yılmaz on 13.03.2023.
//

import UIKit
import Firebase

class SigninScreen: UIViewController {
    private var siginModel = SigninViewModel()
  
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func signinPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text{
            siginModel.creatUser(email: email, password: password) { result in
                if result {
                    self.performSegue(withIdentifier: "signinTo", sender: nil)
                } else {
                    
                }
            }
           }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
}
