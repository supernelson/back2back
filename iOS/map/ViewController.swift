//
//  ViewController.swift
//  map
//
//  Created by AARON KIM on 9/7/16.
//  Copyright © 2016 AARON KIM. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    
    @IBOutlet weak var Map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var location = CLLocationCoordinate2DMake(
            37.784978,
            -122.4030052)
        
        var span =
        MKCoordinateSpanMake(0.2, 0.2)
        
        var region =
        MKCoordinateRegion(center: location, span: span)
        
        Map.setRegion(region, animated: true)
        
        var annotation = MKPointAnnotation()
            annotation.setCoordinate(location)
            annotation.title = "Dev Bootcamp"
            annotation.subtitle = "Coding School"
        
        
        Map.addAnnotation(annotation)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

