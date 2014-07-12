//
//  ListDestTableViewController.swift
//  RunOrNot
//
//  Created by Neil Lobo on 7/11/14.
//  Copyright (c) 2014 Neil. All rights reserved.
//

import UIKit

@objc(ListDestTableViewController) class ListDestTableViewController : UITableViewController {
    
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        
        var source: AddDestViewController = segue.sourceViewController as AddDestViewController
        
        if source.destItem != nil {
            var item:DestItem = source.destItem!
            self.destinationList.append(item)
            self.tableView.reloadData()
        }
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath:
        
        NSIndexPath!) {
            
            tableView.deselectRowAtIndexPath(indexPath, animated: false)
            
            var tappedItem: DestItem = self.destinationList[indexPath.row] as
                
            DestItem
            
            
            
            
    }
    
    var destinationList:Array<DestItem> = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        loadInitialData()
        
    }

    func loadInitialData(){
        var loc1 = DestItem(name: "Berkeley")
        self.destinationList.append(loc1)
        
        var loc2 = DestItem(name: "Mission")
        self.destinationList.append(loc2)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.destinationList.count
    }

    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
       
        let CellIdentifier:String = "DestListPrototypeCell"
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as UITableViewCell

        var destitem: DestItem = self.destinationList[indexPath.row] as DestItem
        
        cell.textLabel.text = destitem.locationName

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
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
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
