//
//  MoviesTableViewCell.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 20/09/22.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet var movieLabel: UILabel!
    @IBOutlet var moviePosterImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
