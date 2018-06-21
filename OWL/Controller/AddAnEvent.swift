//
//  AddAnEvent.swift
//  OWL
//
//  Created by Carlos Mata on 6/20/18.
//  Copyright © 2018 Carlos Mata Fernandez. All rights reserved.
//

import UIKit

class AddAnEvent: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func PressedButton(_ sender: Any) {
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        present(controller, animated: true, completion: nil)
    }

}

