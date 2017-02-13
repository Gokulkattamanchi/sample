//
//  teamsTableViewController.swift
//  midterm_project
//
//  Created by Gokul Kattamanchi on 10/15/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import UIKit

class teamsTableViewController: UITableViewController {
    let sets = StudentRosterModel()
    typealias studentInfo = Dictionary<String, AnyObject>
    typealias studentArray = [studentInfo]
    // var studentsSorted:studentArray = studentArray()
    var selectedRow:Int = 0
    
    /*var arrayOfStrings: [String] = ["David Ospino", "Emiliano Martinez", "Petr Cech","Mathieu Debuchy","Kieran Gibbs","Per Mertesacker","Gabriel","Laurent  Koscielny","Rob Holding","Nacho Monreal","Shkodran Mustafi","Hector Bellerin","Carl Jenkinson","Aaron Ramsey","Mesut Ozil","Alex Oxlade-Chamberlain"]*/
    /*,"Santi Cazorla","Granit Xhaka","Jeff Reine-Adelaide","Francis Coquelin","Mohamed Elneny","Alexis","Lucas perez","Olivier Giroud","Theo Walcott","Alex Iwobi","Yaya Sanoga","Danny Welbeck","Chuba Akpom"*/
    var arrayOfImages: [String] = ["a.jpg", "b.jpg", "c.jpg", "d.jpg","e.jpg", "f.jpg", "g.jpg", "h.jpg","i.jpg","j.jpg","k.jpg","l.jpg","m.jpg","n.jpg","o.jpg","p.jpg","q.jpg","r.jpg","s.jpg","t.jpg","u.jpg","v.jpg","w.jpg","x.jpg","y.jpg","z.jpg","aa.jpg","bb.jpg","cc.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.title = "Players"
        //[[UITabBar appearance] setTintColor:[UIColor whiteColor]];
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    //= students.studentRoster.sort  { ($0["last_name"] as? String) < ($1["last_name"] as? String )}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sets.players.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath)
        
        // Configure the cell...
        
        // sets.students.sortInPlace{($0["last_name"] as! String ) < ($1["last_name"] as! String)}
        //sets.students.sortInPlace{_,_ in (["last_name"] as! String ) < (["last_name"] as! String)}
        //print("View did appear")
        
        //cell.textLabel?.text = arrayOfStrings[indexPath.row]
        cell.textLabel?.text = (sets.players[indexPath.row]["first_name"]as? String)! + " " + (sets.players[indexPath.row]["last_name"] as? String)!
        cell.imageView!.image = UIImage(named: arrayOfImages[indexPath.row])
       // cell.textLabel?.textAlignment = NSTextAlignment.Left
       // CGSize itemSize = CGSizeMake(40, 40);
       // UIGraphicsBeginImageContextWithOptions(itemSize, NO, 0.0)
            //arrayOfImages[indexPath.row]
        
       // let customCell:UITableViewCell = CustomCell(style: UITableViewCellStyle.Default, reuseIdentifier: "dataCell")
        
        /*cell.detailTextLabel?.text = (sets.students[indexPath.row]["student_id"]as! String) + "  " + "Major: " + (sets.students[indexPath.row]["major"] as! String) + "  " + "Class of: " + (sets.students[indexPath.row]["graduation_year"] as! String)
        if ((sets.students[indexPath.row]["gender"] as? String) == "M")
            
            
        {
            cell.imageView!.image = UIImage(named:"male.png")
            
        }
        else {
            cell.imageView!.image = UIImage(named:"female.png")
        }*/
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
 */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "detailSegue") {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                _ = sets.players[indexPath.row]
               let  dvc = segue.destination as! teamDetailViewController
                dvc.selectedTeam = indexPath.row               // dvc.delegate = self
            }
        }
        
    }
    
    // tableView  didSeletRowAtIndexpath method is called when a displayed row is selected.
    // performSegueWithIdentifier intiates the process of loading a new MVC
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
       // print(indexPath.row)
       // self.performSegueWithIdentifier("detailSegue", sender: self)
        //print(selectedRow)
    }
}
 
    
    


