//
//  FavoritesViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    let posters = ["0", "1", "2", "3", "4"]
    var movies: [Movie] = []
    let movieDataManager = MovieDataManager()
    
    @IBOutlet var favoritePosterImage: UIImageView!
    @IBOutlet var favoriteMovieLabel: UILabel!
    @IBOutlet var posterPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movies = movieDataManager.getFavorites()
        posterPageControl.numberOfPages = posters.count
        favoritePosterImage.image = UIImage(named: posters[0])
        favoriteMovieLabel.text = movies[0].title
    }
    
    
    @IBAction func posterPageControlAction(_ sender: UIPageControl) {
        favoritePosterImage.image = UIImage(named: posters[posterPageControl.currentPage])
    }
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        if posterPageControl.currentPage == 0 {
            posterPageControl.currentPage = posters.count - 1
        } else {
            posterPageControl.currentPage = posterPageControl.currentPage - 1
        }
        changePoster()
        changeMovieTitle()
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        if posterPageControl.currentPage == posters.count - 1 {
            posterPageControl.currentPage = 0
        } else {
            posterPageControl.currentPage = posterPageControl.currentPage + 1
        }
        changePoster()
        changeMovieTitle()
    }
    
    func changePoster() {
        favoritePosterImage.image = UIImage(named: posters[posterPageControl.currentPage])
    }
    
    func changeMovieTitle() {
        favoriteMovieLabel.text = movies[posterPageControl.currentPage].title
    }
    
}
