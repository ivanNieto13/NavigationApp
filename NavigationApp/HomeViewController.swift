//
//  HomeViewController.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func viewDetailButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
    }
    

}
