//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Egor  on 12.06.2020.
//  Copyright © 2020 Egor Kramer. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet var dogImageView: UIImageView!
    
    var image: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogImageView.image = image

    }
    

    @IBAction func shareImage(_ sender: Any) {
    }
    
}
