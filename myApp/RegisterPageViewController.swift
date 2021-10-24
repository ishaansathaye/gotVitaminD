//
//  RegisterPageViewController.swift
//  Got Vitamin D?
//
//  Created by Ishaan on 9/4/17.
//  Copyright © 2017 Ishaan. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        
        // Check for empty fields
        if(userEmail!.isEmpty || userPassword!.isEmpty || (userRepeatPassword != nil))
        {
            // Display alert message
            
            displayMyAlertMessage(userMessage: "All fields are required.");
            
            return;
        }
        
        // Check if passwords match
        if (userPassword != userRepeatPassword)
        {
            // Display an alert message
            
            displayMyAlertMessage(userMessage: "Passwords do not match.");
            
            return;
        
        }
        
        // Store data
        UserDefaults.standard.set(userEmail, forKey: "userEmail");
        UserDefaults.standard.set(userEmail, forKey: "userPassword");
        UserDefaults.standard.synchronize();
        
        // Display alert message with confirmation
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
        
    }

}

































