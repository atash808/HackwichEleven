//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Atash Imanverdi on 11/16/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        let restaurantTwo = Restaurant(title: "Kalapawai Cafe & Deli", type: "American", coordinate: CLLocationCoordinate2D(latitude:21.332269, longitude: -158.082419))
        
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
    }

    func centerMapOnLocation(location:CLLocation) {
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
        
        
    }

    
    
    
    
}

