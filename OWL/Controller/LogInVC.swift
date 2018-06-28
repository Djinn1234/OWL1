//
//  LogIn.swift
//  OWL
//
//  Created by Carlos Mata on 6/28/18.
//  Copyright © 2018 Carlos Mata Fernandez. All rights reserved.
//

import UIKit
import Firebase



class LogInVC: UIViewController {

    @IBOutlet weak var EmailTextfield: UITextField!
    @IBOutlet weak var PasswordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func LogInPressed(_ sender: AnyObject) {
        
        Auth.auth().signIn(withEmail: EmailTextfield.text!, password: PasswordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("Succesful Log In")
           self.navigationController?.popToRootViewController(animated: true)
            }
        }
    
    }
    
    
    }
    

