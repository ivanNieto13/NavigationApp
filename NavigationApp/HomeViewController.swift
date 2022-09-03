//
//  HomeViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var cardView: UIView!
    @IBOutlet var genresCollectionView: UICollectionView!
    
    let movieDataManager = MovieDataManager()
    let genreDataManager = GenreDataManager()
    let defaultGenre = "Comedy"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // movieDataManager.fetch(genre: defaultGenre)
        genreDataManager.fetch()
    }
    
    @IBAction func viewDetailButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genreDataManager.genreCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "genresCell", for: indexPath) as! GenresCellCollectionViewCell
        let genre = genreDataManager.genreAt(index: indexPath.row)
        cell.genreImage.image = UIImage.init(named: genre.genre)
        cell.genreLabel.text = genre.genre
        return cell
    }
    

}
