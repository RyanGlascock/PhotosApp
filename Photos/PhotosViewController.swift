//
//  PhotosViewController.swift
//  Documents Core Data
//
//  Created by Ryan Glascock on 8/28/19.
//  Copyright © 2019 Ryan Glascock. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    @IBAction func takePhote(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let photo = UIImagePickerController()
            photo.delegate = self
            photo.sourceType = UIImagePickerController.SourceType.camera
            photo.allowsEditing = false
            self.present(photo, animated: true, completion: nil)
        }        
}
//    @IBAction func takePhoto(_ sender: Any) {
//        imagePicker =  UIImagePickerController()
//        imagePicker.delegate = self
//        imagePicker.sourceType = .camera
//
//        present(imagePicker, animated: true, completion: nil)
//    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = photo
        }
        self.dismiss(animated: true, completion: nil)
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        imagePicker.dismiss(animated: true, completion: nil)
//        imageView.image = info[.originalImage] as? UIImage
//    }
    @IBAction func savePhoto(_ sender: Any) {
        let photo = UIImagePickerController()
        photo.delegate = self
        photo.sourceType = UIImagePickerController.SourceType.photoLibrary
        photo.allowsEditing = false
        self.present(photo, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
