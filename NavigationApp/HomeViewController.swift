//
//  HomeViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var cardView: UIView!
    @IBOutlet var genresCollectionView: UICollectionView!
    
    let movieDataManager = MovieDataManager()
    let genreDataManager = GenreDataManager()
    let defaultGenre = "Comedy"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // movieDataManager.fetch(genre: defaultGenre)
        // genreDataManager.fetch()
    }
    
    @IBAction func viewDetailButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
    }
    

}
