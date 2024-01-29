//
//  NYCHSDetailTableViewController.swift
//  20231012-ANUSHAGHATTAMANENI-NYCSchools
//
//  Created by ANUSHAGHATTAMANENI on 10/12/23.
//  Copyright © 2023 ANUSHAGHATTAMANENI. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class NYCHSDetailTableViewController: UITableViewController {
    
    var HSWithSatScore: NYCHighSchools!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = HSWithSatScore.schoolName
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
}

extension NYCHSDetailTableViewController {
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        CellAnimator.animate(cell, withDuration: 0.6, animation: CellAnimator.AnimationType(rawValue: 5)!)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return DetailCells.tableViewCellWithSATScore(self.tableView, HSWithSatScore: self.HSWithSatScore)
        case 1:
            return DetailCells.tableViewCellWithOverView(self.tableView, HSWithSatScore: self.HSWithSatScore)
        case 2:
            return DetailCells.tableViewCellWithContactInfo(self.tableView, HSWithSatScore: self.HSWithSatScore)
        default:
            return DetailCells.tableViewCellWithAddress(self.tableView, HSWithSatScore: self.HSWithSatScore)
        }
    }
    
    //MARK: - UITable View Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0,1,2:
            return UITableViewAutomaticDimension
        default:
            return UIScreen.main.bounds.width * 0.7
        }
    }
    
}
