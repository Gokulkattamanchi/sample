//
//  scoreSegmentViewController.swift
//  midterm_project
//
//  Created by Gokul Kattamanchi on 10/15/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import UIKit

class scoreSegmentViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
     let sets = CardSetsModel()
    
     let sets1 = resultsModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        bgImage.image = UIImage(named: "bg3.jpg")

//            let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
//            backgroundImage.image = UIImage(named: "bg3.jpg")
//            self.view.insertSubview(backgroundImage, atIndex: 0)
        
    //self.title = "Scores"
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // This was put in mainly for my own unit testing
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(segmentControl.selectedSegmentIndex == 0)
        {
            return 2 }
        if(segmentControl.selectedSegmentIndex == 1)
        {
            return sets.fixtureSets.count
        }
       else
        {
            return sets1.resultSets.count
        }
        
    }

    @IBOutlet weak var myTableView: UITableView!
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)  as! fixturesCustomCell
        
        switch(segmentControl.selectedSegmentIndex)
        {
        case 0:
            cell.teamLabel1.text = (sets.fixtureSets[indexPath.row]["team1"]as? String)!
            cell.teamLabel2.text = (sets.fixtureSets[indexPath.row]["team2"]as? String)!
            cell.placeLabel.text = (sets1.resultSets[indexPath.row]["result"]as? String)!
            cell.dateLabel.text = (sets.fixtureSets[indexPath.row]["results1"]as? String)!
            //cell.imageVS.image = UIImage(named: "images.jpeg")
            //cell.labelVs.text = (sets.fixtureSets[indexPath.row]["result"]as? String)!
            if(indexPath.row == 0){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "ludogoretsrazgrad.png")
                //print(res.resultSets[indexPath.row])
            }
            else if(indexPath.row == 1){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "middlesbrough.png")
            }
            //returnValue = privateList.count
            break
        case 1:
           // print(sets.fixtureSets)
            //print(sets1.resultSets)
            cell.teamLabel1.text = (sets.fixtureSets[indexPath.row]["team1"]as? String)!
            cell.teamLabel2.text = (sets.fixtureSets[indexPath.row]["team2"]as? String)!
            cell.placeLabel.text = (sets.fixtureSets[indexPath.row]["place"]as? String)!
            cell.dateLabel.text = (sets.fixtureSets[indexPath.row]["date"]as? String)!
            //cell.imageVS.image = UIImage(named: "images.jpeg")
            //cell.labelVs.text = (sets.fixtureSets[indexPath.row]["result"]as? String)!
            if(indexPath.row == 0){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "ludogoretsrazgrad.png")
                //print(res.resultSets[indexPath.row])
            }
            else if(indexPath.row == 1){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "middlesbrough.png")
            }
            else if(indexPath.row == 2){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "reading.png")
            }
            else if(indexPath.row == 3){
                cell.imageView1.image = UIImage(named: "sunderland.png")
                cell.imageView2.image = UIImage(named: "arsenal.png")
            }
            break
            
        case 2:
            
           //print(res.resultSets[indexPath.row])
            cell.teamLabel1.text = (sets1.resultSets[indexPath.row]["team1"]as? String)!
            cell.teamLabel2.text = (sets1.resultSets[indexPath.row]["team2"]as? String)!
            cell.placeLabel.text = (sets1.resultSets[indexPath.row]["result"]as? String)!
            cell.dateLabel.text = (sets1.resultSets[indexPath.row]["date"]as? String)!
           // //cell.imageVS.image = UIImage(named: "images.jpeg")
           // cell.labelVs.text = (sets1.resultSets[indexPath.row]["result"]as? String)!
            if(indexPath.row == 0){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "ludogoretsrazgrad.png")
            }
            else if(indexPath.row == 1){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "swanseacity.png")
            }
            else if(indexPath.row == 2){
                cell.imageView1.image = UIImage(named: "burnley.png")
                cell.imageView2.image = UIImage(named: "arsenal.png")
            }
            else if(indexPath.row == 3){
                cell.imageView1.image = UIImage(named: "arsenal.png")
                cell.imageView2.image = UIImage(named: "fcbasel.png")
            }
            break
         
            
        default:
            break
            
        }
     
        
        
        return cell
    }
    
    /*override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        if (toInterfaceOrientation.isLandscape) {
           // println("Landscape");
            let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
            backgroundImage.image = UIImage(named: "bg3.jpg")
            self.view.insertSubview(backgroundImage, atIndex: 0)}
        else {
           // println("Portrait");
            let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
            backgroundImage.image = UIImage(named: "bg3.jpg")        }
     }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.currentDevice().orientation.isPortrait.boolValue {
           
            let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
             backgroundImage.image = UIImage(named: "bg3.jpg")
            //self.view.addSubview(backgroundImage)
            //self.view.contentMode = .ScaleAspectFill
            //self.view.bounds = CGRectZero
            // self.view.clipsToBounds = true
            self.view.insertSubview(backgroundImage, atIndex: 0)
            print("Portrait")
             backgroundImage.image = nil
        } else
        {
            let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
            
            //backgroundImage.contentMode = UIViewContentMode.Redraw
            
            self.view.insertSubview(backgroundImage, atIndex: 0)
           // self.view.contentMode = .ScaleAspectFit
            //backgroundImage.image = UIImage(named: "landscape.jpg")
           // self.view.reloadInputViews()
            print("Landscape")
        }
    }*/
    @IBAction func segementControlAction(_ sender: AnyObject) {
        
        myTableView.reloadData()
        self.myTableView.reloadData()
     
    }
    
}
