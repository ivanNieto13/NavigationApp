//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receivedGenre: Genre?
    
    let movieDataManager = MovieDataManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        let _genre = receivedGenre?.genre
        let movies: [Movie] = movieDataManager.fetch(genre: _genre ?? "")
        print("movies ->", movies)
    }
    @IBAction func viewMoreButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "viewMoreSegue", sender: Self.self)
    }
    
    
}
