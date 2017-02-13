//
//  StudentRosterModel.swift
//  homework_student
//
//  Created by Gokul Kattamanchi on 9/13/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import Foundation

class StudentRosterModel {
    
    var players = [Dictionary<String,AnyObject>]()
    
    /* initializer   */
    
    init()
    {
        readJsonFile()
    }
    
    /*
     Method to read a json file as data file and convert to swift array of dictionary.
     
     NSData method is used for reading a resource file
     
     NSJSONSerialization class is used for converting NSData (a bag of bits) to dicitionary. The specific method is JSONObjectWithData
     
     */
    
    func readJsonFile () {
        if let path = Bundle.main.path(forResource: "student_roster", ofType: "json") {
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: NSData.ReadingOptions.mappedIfSafe)
                do {
                    let jsonResult: NSDictionary = try JSONSerialization.jsonObject(with: jsonData, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                    
                    if let sets : [Dictionary<String, AnyObject>] = jsonResult["players1"] as? [Dictionary]
                        
                    {
                        players = sets
                    }
                } catch {}
            } catch {}
           // print(students)
        }
    }
    
}
