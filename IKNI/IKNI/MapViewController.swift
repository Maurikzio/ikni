//
//  MapViewController.swift
//  IKNI
//
//  Created by ALFA on 3/27/17.
//  Copyright © 2017 ALFA. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Map"
        
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.002, 0.002)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(49.835180, 24.008481)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Building 5"
        annotation.subtitle = "street: Stepana Bandery, 28A"
        
        map.addAnnotation(annotation)
        
        
        
        let location2 = CLLocationCoordinate2DMake(49.834394, 24.008908)
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = location2
        annotation2.title = "Building 29"
        annotation2.subtitle = "street: Konovaltsia, 4"
        map.addAnnotation(annotation2)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
