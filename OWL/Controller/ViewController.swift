//
//  ViewController.swift
//  OWL
//
//  Created by Carlos Mata on 6/17/18.
//  Copyright © 2018 Carlos Mata Fernandez. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        
    }
    
    @IBAction func LogOutPressed(_ sender: Any) {
        do {
           try Auth.auth().signOut()
            self.performSegue(withIdentifier: "goToProfile", sender: self)
        } catch {
            print("error!")
        }
    
    }
}

