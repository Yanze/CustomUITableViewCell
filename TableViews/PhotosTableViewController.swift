//
//  PhotosTableViewController.swift
//  TableViews
//
//  Created by yanze on 9/13/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    
    var photos = Photo.downloadPhotos()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PhotoTableViewCell

        // Configure the cell...
        let photo = photos[indexPath.row]
        cell.photo = photo
        return cell
    }
 


}
