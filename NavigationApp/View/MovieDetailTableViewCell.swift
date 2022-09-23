//
//  MovieDetailTableViewCell.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 22/09/22.
//

import UIKit

class MovieDetailTableViewCell: UITableViewCell {

    @IBOutlet var yearTitleLabel: UILabel!
    @IBOutlet var yearValueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
