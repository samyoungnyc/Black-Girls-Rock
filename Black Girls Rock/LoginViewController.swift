//
//  ViewController.swift
//  Black Girls Rock
//
//  Created by Computer on 3/16/16.
//  Copyright © 2016 Computer. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: Text Fields
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // MARK: View Actions
    
    @IBAction func facebookLoginPressed(sender: UIButton) {
        
    }
    
    @IBAction func loginPressed(sender: UIButton) {
        
    }
    
    @IBAction func createAccountPressed(sender: UIButton) {
    }
    
    @IBAction func helpButtonPressed(sender: UIButton) {
    }
    
    // MARK: Keyboard Methods
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            passwordTextField.resignFirstResponder()
//            self.loginButtonPressed()
        }
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up bottom borders for both text fields

        let emailBottomBorder = CALayer()
        
        emailBottomBorder.frame = CGRectMake(0.0, emailTextField.frame.size.height - 1, emailTextField.frame.size.width, 1.0);
        emailBottomBorder.backgroundColor = UIColor.whiteColor().CGColor
        emailTextField.layer.addSublayer(emailBottomBorder)
        
     
        let passwordBottomBorder = CALayer()
        
        passwordBottomBorder.frame = CGRectMake(0.0, passwordTextField.frame.size.height - 1, passwordTextField.frame.size.width, 1.0);
        passwordBottomBorder.backgroundColor = UIColor.whiteColor().CGColor
        passwordTextField.layer.addSublayer(passwordBottomBorder)
    }

}

