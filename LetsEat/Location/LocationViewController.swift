//
//  LocationViewController.swift
//  LetsEat
//
//  Created by Md Maruf Prodhan on 3/7/21.
//

import UIKit

class LocationViewController: UIViewController , UITableViewDataSource {
    let manager = LocationDataManager()
    
//    let locations = ["Aspen", "Boston", "Charleston", "Chicago",
//    "Houston", "Las Vegas", "Los Angeles",
//    "Miami", "New Orleans", "New York",
//    "Philadelphia", "Portland", "San Antonio",
//    "San Francisco",
//    "Washington District of Columbia"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.fetch()

    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = manager.locationItem(at: indexPath)
        return cell
        
    }
    
    
}
