//
//  Extension+UIColor.swift
//  20231012-ANUSHAGHATTAMANENI-NYCSchools
//
//  Created by ANUSHAGHATTAMANENI on 10/12/23.
//  Copyright © 2023 ANUSHAGHATTAMANENI. All rights reserved.
//
import Foundation
import UIKit

extension UIColor {
    
    class func randomColorForCardViewCell() -> UIColor {
        let lightRed        : UIColor?  = UIColor(red: 0.925, green: 0.290, blue: 0.255, alpha: 1.00)
        let lightBlue       : UIColor?  = UIColor(red: 0.000, green: 0.639, blue: 0.812, alpha: 1.00)
        let lightGray       : UIColor?  = UIColor(red: 0.773, green: 0.773, blue: 0.773, alpha: 1.00)
        let indigo          : UIColor?  = UIColor(red: 0.331, green: 0.430, blue: 0.733, alpha: 1.00)
        let green           : UIColor?  = UIColor(red: 0.298, green: 0.686, blue: 0.314, alpha: 1.00)
        let yellow          : UIColor?  = UIColor(red: 1.000, green: 0.933, blue: 0.345, alpha: 1.00)
        let deepOrange      : UIColor?  = UIColor(red: 1.000, green: 0.439, blue: 0.263, alpha: 1.00)
        let sideBarColorArr : [UIColor] = [lightRed!, lightBlue!, lightGray!, indigo!, green!, yellow!, deepOrange!]
        let randomNumber    = arc4random_uniform(UInt32(sideBarColorArr.count))
        return sideBarColorArr[Int(randomNumber)]
    }
}
