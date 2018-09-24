//
//  FullImageViewController.swift
//  TravelPics
//
//  Created by Pulkit Aggarwal on 23/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController,UIScrollViewDelegate {
    
    var fullimage = UIImage(named : "1")

    @IBOutlet weak var fullImgView: UIImageView!
    
    @IBOutlet weak var scrollerView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollerView.delegate = self
        
        fullImgView.image = fullimage
        
        scrollerView.minimumZoomScale = 1
        scrollerView.maximumZoomScale = 4
        scrollerView.contentSize = fullImgView.frame.size
    }
  
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return fullImgView
    }
    
}
