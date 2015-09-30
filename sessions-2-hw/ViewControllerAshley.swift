//
//  ViewControllerAshley.swift
//  sessions-2-hw
//
//  Created by Ashley Johnson on 9/24/15.
//  Copyright © 2015 Ashley Johnson. All rights reserved.
//

import UIKit

class RosterTableViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    let names = ["Kam","Russell","Richard","Beast", "Pete","Jon"]
    //class ViewControllerAshley: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //part 1 - dequeue the cell
        let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath)
           // cell.backgroundColor=UIColor.yellowColor()
        let name = names[indexPath.row]
        cell.textLabel?.text = name
        
        //part 2 - configure the cell
        cell.textLabel?.text = "\(indexPath.row)"
            if indexPath.row == 0 {
                cell.backgroundColor = UIColor.blueColor()
            }
        //part 3 - retur the cell to the table view, because it needs tit to show it
            return cell
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//}
