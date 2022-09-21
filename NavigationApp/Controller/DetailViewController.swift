//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var receivedGenre: Genre?
    var movies: [Movie] = []
    
    @IBOutlet var moviesTable: UITableView!
    let movieDataManager = MovieDataManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTable.delegate = self
        moviesTable.dataSource = self
        
        let _genre = receivedGenre?.genre
        movies = movieDataManager.fetch(genre: _genre ?? "")
    }
    @IBAction func viewMoreButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "viewMoreSegue", sender: Self.self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieTitle", for: indexPath) as! MovieTableViewCell
        cell.movieLabel?.text = movies[indexPath.row].title
        cell.moviePosterImage?.image = UIImage.init(named: String(movies[indexPath.row].id))
        return cell
    }
    
    
 
}
