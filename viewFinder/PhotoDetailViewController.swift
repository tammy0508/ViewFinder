//
//  PhotoDetailViewController.swift
//  viewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var photos: Photos? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photos {
            title = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.imageData{
                
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    photoView.image = cellPhotoImage
                }
            }
        }

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var photoView: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
