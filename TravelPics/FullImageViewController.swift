//
//  FullImageViewController.swift
//  TravelPics
//
//  Created by Pulkit Aggarwal on 23/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController {
    
    var fullimage = UIImage(named : "1")

    @IBOutlet weak var fullImgView: UIImageView!
    
    @IBOutlet weak var scrollerView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullImgView.image = fullimage
    }
  

}
