//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func viewMoreButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "viewMoreSegue", sender: Self.self)
    }
    
    
}
