////
////  ViewController.swift
////  map
////
////  Created by AARON KIM on 9/7/16.
////  Copyright © 2016 AARON KIM. All rights reserved.
////
//
//import UIKit
//import MapKit
//import CoreLocation
//
//class ViewController: UIViewController {
//    
//    
//    @IBOutlet weak var Map: MKMapView!
//    
//    func openMapForPlace() {
//        let regionDistance: CLLocationDistance = 10
//        let coordinates = CLLocationCoordinate2DMake(21.282778, -157.829444)
//        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
//        let options = [
//            MKLaunchOptionsMapCenterKey: NSValue(MKCoordinate: regionSpan.center),
//            MKLaunchOptionsMapSpanKey: NSValue(MKCoordinateSpan: regionSpan.span)
//        ]
//        
//        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
//        let mapItem = MKMapItem(placemark: placemark)
//        mapItem.name = "Test"
//        
//        MKMapItem.openMapsWithItems([mapItem], launchOptions: options)
//    }
//    
//    openMapForPlace()
//    
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        // Do any additional setup after loading the view, typically from a nib.
////        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
////        
////        let regionRadius: CLLocationDistance = 1000
////        func centerMapOnLocation(location: CLLocation) {
////            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
////                                                                      regionRadius * 2.0, regionRadius * 2.0)
////            MKMapView.setRegion(coordinateRegion, animated: true)
////        }
////        
////        var location = CLLocationCoordinate2DMake(
////            37.784978,
////            -122.4030052)
////        
////        var span =
////            MKCoordinateSpanMake(0.2, 0.2)
////        
////        var region =
////            MKCoordinateRegion(center: location, span: span)
////        
////        Map.setRegion(region, animated: true)
////        
////        var annotation = MKPointAnnotation()
////        annotation.coordinate=location
////        annotation.title = "Dev Bootcamp"
////        annotation.subtitle = "Coding School"
////        
////        
////        Map.addAnnotation(annotation)
////        
////        
////    }
////    
//// 
////    
////    
//}
//
