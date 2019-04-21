//
//  RegisterViewController.swift
//  AtSlevy's
//
//  Created by Stefan Slevoaca on 4/20/19.
//  Copyright © 2019 Stefan Slevoaca. All rights reserved.
//

import UIKit

class RegisterViewController: EditingUIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var retypePasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func registerAction(_ sender: Any) {
        
        guard !self.emailTextField.text!.isEmpty
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Email field cannot be empty !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        guard !self.fullNameTextField.text!.isEmpty
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Full name field cannot be empty !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        guard !self.addressTextField.text!.isEmpty
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Address field cannot be empty !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        guard !self.passwordTextField.text!.isEmpty
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Password field cannot be empty !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        guard !self.retypePasswordTextField.text!.isEmpty
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Retype password field cannot be empty !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        let email = self.emailTextField.text!
        let fullName = self.fullNameTextField.text!
        let address = self.addressTextField.text!
        let password = self.passwordTextField.text!
        let retypePassword = self.retypePasswordTextField.text!
        
        guard password == retypePassword
            else {
                
                let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Passwords do not match !")
                self.present(errorAlertController, animated: true, completion: nil)
                return
        }
        
        
        let errorAlertController = Utilities.buildErrorUIAlertController(errorMessage: "Something happened")
        self.present(errorAlertController, animated: true, completion: nil)
    }
    
    @IBAction func goBackToLoginAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
