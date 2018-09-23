//
//  MyCollectionViewCell.swift
//  TravelPics
//
//  Created by Pulkit Aggarwal on 19/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pictureImgView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        pictureImgView.layer.cornerRadius = 5
        pictureImgView.clipsToBounds = true
    }
}
