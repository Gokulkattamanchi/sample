//
//  albumCollectionViewController.swift
//  midterm_project
//
//  Created by Gokul Kattamanchi on 10/15/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import UIKit

class albumCollectionViewController: UICollectionViewController {

    private let reuseIdentifier = "Cell"
    
    class PhotoCollectionViewController: UICollectionViewController {
        
        var selectedImage: String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Register cell classes
            self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
            
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
        
        override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
            return 1
        }
        
        
        override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 25
        }
        
        override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            let cell:PhotoCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("photoCell", forIndexPath: indexPath) as! PhotoCollectionViewCell
            
            print (indexPath.row)
            let imageName: String = "image_ - " + String(indexPath.row + 1) + ".JPG"
            
            print (imageName)
            
            cell.photo.image = UIImage(named: imageName)
            
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
        override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
            selectedImage = "Limage_ - " + String(indexPath.row + 1) + ".JPG"
            
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
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if let image = selectedImage {
                if (segue.identifier == "photoSegue") {
                    let pvc = segue.destinationViewController as! PhotoViewController
                    pvc.displayImageName = image
                }
            }
        }
    }

    
}
