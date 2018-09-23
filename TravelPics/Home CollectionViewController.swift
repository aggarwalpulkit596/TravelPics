 //
//  Home CollectionViewController.swift
//  TravelPics
//
//  Created by Pulkit Aggarwal on 19/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

 var imagesArray = [UIImage(named:"0")!,UIImage(named:"1")!,UIImage(named:"2")!,UIImage(named:"3")!,UIImage(named:"4")!,UIImage(named:"5")!,UIImage(named:"6")!,UIImage(named:"7")!,UIImage(named:"8")!,UIImage(named:"9")!,UIImage(named:"10")!,UIImage(named:"11")!,UIImage(named:"0")!,UIImage(named:"1")!,UIImage(named:"2")!,UIImage(named:"3")!,UIImage(named:"4")!,UIImage(named:"5")!,UIImage(named:"6")!,UIImage(named:"7")!,UIImage(named:"8")!,UIImage(named:"9")!,UIImage(named:"10")!,UIImage(named:"11")!]
 
 var namesArray = ["Spain", "Sweden", "Brazil", "Bardados", "Hawai", "South Africa", "Australia", "Mauracious", "Fiji", "Canary Island", "Egypt", "Kenya","Spain", "Sweden", "Brazil", "Bardados", "Hawai", "South Africa", "Australia", "Mauracious", "Fiji", "Canary Island", "Egypt", "Kenya"]
 
class Home_CollectionViewController: UICollectionViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func openCamera(_ sender: Any) {
        
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.allowsEditing = true
        picker.delegate = self
        
        present(picker,animated: true)
        }else{
            let alert = UIAlertController(title: "Camera Unavailable", message: "You do not have camera available on your device", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok Cool", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            let delAction = UIAlertAction(title: "Delete?", style: .destructive, handler: { (action) in
                
                print("Deleted")
                
                })
            alert.addAction(delAction)
            
            present(alert,animated: true)
            
            
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namesArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "travelCell", for: indexPath) as! MyCollectionViewCell
    
        cell.nameLabel.text = namesArray[indexPath.row]
        cell.pictureImgView.image = imagesArray[indexPath.row]
        
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
