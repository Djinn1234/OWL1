//
//  ShareViewController.swift
//  OWL
//
//  Created by Carlos Mata on 6/21/18.
//  Copyright © 2018 Carlos Mata Fernandez. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage

class ShareViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
   
    @IBOutlet weak var imageView: UIImageView!
    
    
    let imagePicker = UIImagePickerController()
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    @IBAction func onPictureTapped(_ sender: Any) {
        present(imagePicker, animated: true, completion: nil)
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func onUploadClicked(_ sender: Any) {
        if let pickedImage = imageView.image, let imageData = UIImagePNGRepresentation(pickedImage) {
            let storageRef = Storage.storage().reference()
            let imageRef = storageRef.child("images")
            
            imageRef.putData(imageData, metadata: nil) { (metadata, error) in
                if error != nil {
                    NSLog(error!.localizedDescription)
                }
                
                self.navigationController?.popToRootViewController(animated: true)
            }
        }
    }
}
