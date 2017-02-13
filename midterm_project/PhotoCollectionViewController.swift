//
//  PhotoCollectionViewController.swift
//  AlbumAppDemo
//
//  Created by CS589 on 10/7/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotoCollectionViewController: UICollectionViewController {
    
    var selectedImage: String?

    override func viewDidLoad() {
        super.viewDidLoad()
          //self.title = "Photo Album"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
         
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:PhotoCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        
       // print (indexPath.row)
        let imageName: String = "image" + String(indexPath.row) + ".jpg"
        
       //print (imageName)
       // print(indexPath.row)
        
        cell.albumPhoto.image = UIImage(named: imageName)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        selectedImage = "image" + String(indexPath.row) + ".jpg"
        //print(indexPath.row)
       // print("selected")
        return true
    }
    

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let image = selectedImage {
            if (segue.identifier == "albumSegue") {
                let pvc = segue.destination as! PhotoViewController
                pvc.displayImageName = image
               
            }
        }
    }

}
