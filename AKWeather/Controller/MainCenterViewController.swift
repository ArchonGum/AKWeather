//
//  MainCenterViewController.swift
//  AKDrawer
//
//  Created by Archon.K on 15/8/23.
//  Copyright (c) 2015年 ArchonK. All rights reserved.
//

import UIKit

class MainCenterViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mainCenterViewCell", forIndexPath: indexPath) as! UITableViewCell

        cell.textLabel?.text = "Main View Cell: \(indexPath.row)"

        return cell
    }
    
    @IBAction func barButtonClick(sender: UIBarButtonItem) {
        switch sender.tag {
            
        // Left bar button action
        case 101:
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.toggleLeftDrawer(sender, animated: false)
            
        // Right bar button action
        case 102:
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.toggleRightDrawer(sender, animated: true)
        default:
            break
        }
    }
    
    @IBAction func swipeGestureAction(sender: UISwipeGestureRecognizer) {
        switch sender.direction {
            
        case UISwipeGestureRecognizerDirection.Left:
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.toggleRightDrawer(sender, animated: false)
            
        case UISwipeGestureRecognizerDirection.Right:
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.toggleLeftDrawer(sender, animated: true)
            
        default:
            return
        }
    }
}
