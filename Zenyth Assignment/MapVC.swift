//
//  MapVC.swift
//  Zenyth Assignment
//
//  Created by Emily Heejung Son on 6/21/17.
//  Copyright © 2017 Emily Heejung Son. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class MapVC: UIViewController {
    var mapView: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.bringSubview(toFront: self.mapView!)
        //[mapView_ addSubview,:Button];
        
        //GMSServices.provideAPIKey("AIzaSyCqzYvdayDZRBgnpMwHzW5Df_bsqcR-9Ec")
       // let camera = GMSCameraPosition.camera(withLatitude: 37, longitude: -122, zoom: 10)
       // mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
       // view = mapView
        //naviationItem.right
    }
    
    @IBOutlet var Button: UIButton!
    
    override func loadView() {
          // Create a GMSCameraPosition that tells the map to display the
         // coordinate -33.86,151.20 at zoom level 6.
         let camera = GMSCameraPosition.camera(withLatitude: 37, longitude: -122, zoom: 10)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
         view = mapView
        
    // Creates a marker in the center of the map.
        
        let marker = GMSMarker()
          marker.position = CLLocationCoordinate2D(latitude:37, longitude: -122)
         marker.title = "SF Airport"
         // marker.snippet = "Australia"
         marker.map = mapView
 
          }
    
    
}
