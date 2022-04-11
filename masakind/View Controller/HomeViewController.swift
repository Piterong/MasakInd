//
//  HomeViewController.swift
//  masakind
//
//  Created by Piter Wongso on 06/04/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var backButton: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.red
    }

    @IBAction func seeMorePressed(_ sender: UIButton){
        self.performSegue(withIdentifier: "goToOverview", sender: self)
    }

}

