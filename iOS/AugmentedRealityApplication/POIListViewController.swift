//
//  POIListViewController.swift
//  AugmentedRealityApplication
//
//  Created by Tolsen Wilmot on 9/6/16.
//  Copyright © 2016 Wikitude. All rights reserved.
//

import UIKit

class POIListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var items: [String] = ["Mexican Museum Tower", "Bay Bridge", "Salesforce Tower", "Transbay Terminal","New Musuem Center"]
    
    @IBOutlet
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("line did load")
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        print("hi")
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }

}
