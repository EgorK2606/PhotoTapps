//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Egor  on 11.06.2020.
//  Copyright © 2020 Egor Kramer. All rights reserved.
//

import UIKit


class PhotosCollectionViewController: UICollectionViewController {

    let photos = ["dog1", "dog2", "dog3", "dog4", "dog5", "dog6", "dog7", "dog8", "dog9", "dog10", "dog11", "dog12", "dog13", "dog14", "dog15"]
    
    let itemsPerRow: CGFloat = 2
    let inset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        collectionView.backgroundColor = .yellow
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//
//        layout.itemSize = CGSize(width: 60, height: 60)
//        layout.sectionInset = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
//        layout.minimumLineSpacing = 30
//        layout.minimumInteritemSpacing = 30

        }



    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
    
        cell.dogImageView.image = UIImage(named: photos[indexPath.item])
        
        
        
        return cell
    }

   

}

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        
        let paddingWidth = inset.bottom * (itemsPerRow + 1)
        let avalaibleWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = avalaibleWidth / itemsPerRow

        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return inset
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return inset.bottom
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return inset.bottom

    }
}
