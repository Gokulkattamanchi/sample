//
//  teamViewCell.swift
//  midterm_project
//
//  Created by Gokul Kattamanchi on 10/15/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import UIKit

class teamViewCell: UITableViewCell {

    @IBOutlet weak var teamLabel: UILabel!
    override func layoutSubviews() {
        super.layoutSubviews()
        self.imageView?.frame = CGRect(x: 30, y: 10, width: 70, height: 50)
        //CGRect frame = self.teamLabel.frame;
       // frame.size.width = CGRectGetWidth(self.frame);
       // frame.origin.x = 0.0;
        //self.teamLabel.frame = frame;
        //self.teamLabel?.frame = CGRectMake(80, 10, 100, 30)
    
        
        
    }
}
