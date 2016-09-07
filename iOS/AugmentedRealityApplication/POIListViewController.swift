//
//  POIListViewController.swift
//  AugmentedRealityApplication
//
//  Created by Tolsen Wilmot on 9/6/16.
//  Copyright © 2016 Wikitude. All rights reserved.
//

import UIKit

class POIListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var items = [["id": 1, "description": "Mexican Museum Tower", "Latitude": 37.786069, "Longitude": -122.402819], ["description": "Bay Bridge"], ["description": "Salesforce Tower"], ["description": "Transbay Terminal"], ["description": "New Moscone Center"]]
    
    @IBOutlet
    var tableView: UITableView!
    var viewController: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewController = ViewController()
        print("line did load")
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    
    //Mikaels code
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "" {
            var destinationVC = MikaelsViewController()
            destinationVC.data = ["aaron":"hello"]
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        print("hi")
        cell.textLabel?.text = self.items[indexPath.row]["description"] as? String
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //Mikaels code
        self.presentViewController(viewController, animated: true, completion: nil)
        
        print("You selected cell #\(indexPath.row)!")
    }

}
