//
//  FavoritesViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    let posters = ["0", "1", "2", "3", "4"]
    
    @IBOutlet var favoritePosterImage: UIImageView!
    @IBOutlet var posterPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        posterPageControl.numberOfPages = posters.count
        favoritePosterImage.image = UIImage(named: posters[0])
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
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        if posterPageControl.currentPage == posters.count - 1 {
            posterPageControl.currentPage = 0
        } else {
            posterPageControl.currentPage = posterPageControl.currentPage + 1
        }
        changePoster()
    }
    
    func changePoster() {
        favoritePosterImage.image = UIImage(named: posters[posterPageControl.currentPage])
    }
    
}
