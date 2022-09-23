//
//  ViewMoreViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class ViewMoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var receivedMovie: Movie?
    let keys = ["title", "year", "runtime", "director", "actors", "plot", "genres"]
    
    @IBOutlet var movieDetailTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieDetailTable.delegate = self
        movieDetailTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieDetail", for: indexPath) as! MovieDetailTableViewCell
        print()
        cell.yearTitleLabel?.text = keys[indexPath.row].capitalized
        cell.yearValueLabel?.text = receivedMovie.self?.valueByPropertyName(name: keys[indexPath.row]) as? String
        return cell
    }


}
