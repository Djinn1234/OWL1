//
//  RegisterViewController.swift
//  OWL
//
//  Created by Carlos Mata on 6/18/18.
//  Copyright © 2018 Carlos Mata Fernandez. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    
    //Pre-linked IBOutlets

    @IBOutlet var PasswordTextfield: UITextField!
    @IBOutlet var EmailTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func RegisterPressed(_ sender: Any) {
    
    Auth.auth().createUser(withEmail: EmailTextfield.text!, password: PasswordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print ("Succesful Sign up!")
            }
        }
        
        //TODO: Set up a new user on our Firbase database
        
}

}
