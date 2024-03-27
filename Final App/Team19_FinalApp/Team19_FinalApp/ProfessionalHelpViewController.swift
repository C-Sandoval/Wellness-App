//
//  ProfessionalHelpViewController.swift
//  Team19_FinalApp
//
//  Created by Carlos Sandoval on 11/21/23.
//

import UIKit
import MapKit

class ProfessionalHelpViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    fileprivate let locationManager:CLLocationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        displayMap()
    }
    

    func displayMap(){
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        self.map.showsUserLocation = true
    }
}
