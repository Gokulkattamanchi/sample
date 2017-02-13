//
//  PhotoViewController.swift
//  AlbumAppDemo
//
//  Created by CS589 on 10/7/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var photoScrollView: UIScrollView!{
        didSet {
            photoScrollView.contentSize = albumPhoto.frame.size
            photoScrollView.delegate = self
            photoScrollView.minimumZoomScale = 0.10
            photoScrollView.maximumZoomScale = 1.0
        }
    }
    
    
    
    var displayImageName: String?
    
    fileprivate var albumPhoto = UIImageView()
    
    fileprivate var image: UIImage? {
        get { return albumPhoto.image }
        set {
            albumPhoto.image = newValue
            print (newValue)
            albumPhoto.sizeToFit()
            photoScrollView.contentSize = albumPhoto.frame.size
            
        }
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return albumPhoto
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       // print("ok")
    if let imageName = displayImageName {
           // print ("received")
            self.title = imageName
            self.image = UIImage (named: imageName)
        }

         photoScrollView.addSubview(albumPhoto)
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
