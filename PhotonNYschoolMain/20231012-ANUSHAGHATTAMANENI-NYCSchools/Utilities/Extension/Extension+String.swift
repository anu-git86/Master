//
//  Extensions.swift
//  20231012-ANUSHAGHATTAMANENI-NYCSchools
//
//  Created by ANUSHAGHATTAMANENI on 10/12/23.
//  Copyright © 2023 ANUSHAGHATTAMANENI. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func slice(from: String, to: String) -> String? {
        
        return (range(of: from)?.upperBound).flatMap { substringFrom in
            (range(of: to, range: substringFrom..<endIndex)?.lowerBound).map { substringTo in
                String(self[substringFrom..<substringTo])
            }
        }
    }
}

