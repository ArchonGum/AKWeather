//
//  RightViewController.swift
//  AKDrawer
//
//  Created by Archon.K on 15/8/23.
//  Copyright (c) 2015年 ArchonK. All rights reserved.
//

import UIKit

class RightViewController: UITableViewController {

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
        return 3
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("rightViewCell", forIndexPath: indexPath) as! UITableViewCell

        cell.textLabel?.text = "Cell: \(indexPath.row)"
        cell.textLabel?.textColor = UIColor.whiteColor()

        return cell
    }

    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.clearColor()
    }
}
