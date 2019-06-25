//
//  addPhotoViewController.swift
//  viewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class addPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var newScreen = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         newScreen.delegate = self
    }
    
    @IBAction func cameraButton(_ sender: UIButton) {
       newScreen.sourceType = .camera
        present(newScreen, animated: true, completion: nil)

    }
    
    
//    @IBAction func savePhotosButton(_ sender: UIButton) {
////        newScreen.sourceType = .savedPhotosAlbum
////        present(newScreen, animated: true, completion: nil)
//    }
    
    @IBAction func albumButton(_ sender: UIButton) {
        newScreen.sourceType = .photoLibrary
        present(newScreen, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var imageVIew: UIImageView!
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageVIew.image = selectedImage
        }
        
        newScreen.dismiss(animated: true, completion: nil)
    }
    
//    @IBAction func captionBox(_ sender: UITextField) {
//    }



}
