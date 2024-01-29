//
//  HSAddressTableViewCell.swift
//  20231012-ANUSHAGHATTAMANENI-NYCSchools
//
//  Created by ANUSHAGHATTAMANENI on 10/12/23.
//  Copyright © 2023 ANUSHAGHATTAMANENI. All rights reserved.
//

import UIKit
import MapKit

class HSAddressTableViewCell: UITableViewCell {
    
    @IBOutlet var hsAddressMapView: MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func addHSAnnotaionWithCoordinates(_ hsCoordinates: CLLocationCoordinate2D){
        
        let highSchoolAnnotation = MKPointAnnotation()
        highSchoolAnnotation.coordinate = hsCoordinates
        self.hsAddressMapView.addAnnotation(highSchoolAnnotation)
        let span = MKCoordinateSpanMake(0.001, 0.001)
        let region = MKCoordinateRegion(center: highSchoolAnnotation.coordinate, span: span)
        let adjustRegion = self.hsAddressMapView.regionThatFits(region)
        self.hsAddressMapView.setRegion(adjustRegion, animated:true)
    }
    
}
