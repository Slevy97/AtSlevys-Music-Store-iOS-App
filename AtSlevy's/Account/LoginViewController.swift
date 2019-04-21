//
//  LoginViewController.swift
//  AtSlevy's
//
//  Created by Stefan Slevoaca on 4/20/19.
//  Copyright © 2019 Stefan Slevoaca. All rights reserved.
//

import UIKit

class LoginViewController: EditingUIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    @IBAction func loginAction(_ sender: Any) {
        
        guard !self.emailTextField.text!.isEmpty
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Email field cannot be empty !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        guard !self.passwordTextField.text!.isEmpty
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Password field cannot be empty !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        let email = self.emailTextField.text!
        let password = self.passwordTextField.text!
        
        
        
    }
}
