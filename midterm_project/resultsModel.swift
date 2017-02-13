//
//  resultsModel.swift
//  midterm_project
//
//  Created by Gokul Kattamanchi on 10/20/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import Foundation

class resultsModel {
    
    var resultSets = [Dictionary<String,AnyObject>]()
    
    
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
        //print("in readJsonFile")
        if let path = Bundle.main.path(forResource: "results", ofType: "json") {
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: NSData.ReadingOptions.mappedIfSafe)
                do {
                    let jsonResult: NSDictionary = try JSONSerialization.jsonObject(with: jsonData, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                    
                    if let sets1 : [Dictionary<String, AnyObject>] = jsonResult["results_list"] as? [Dictionary]
                    {
                        resultSets = sets1
                        //print(resultSets)
                    }
                } catch {}
            } catch {}
        }
    }
    
}
