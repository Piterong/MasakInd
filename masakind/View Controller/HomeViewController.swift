//
//  HomeViewController.swift
//  masakind
//
//  Created by Piter Wongso on 06/04/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var backButton: UINavigationItem!
    @IBOutlet weak var todayRecommendationView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.red
        
//        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(HomeViewController.imageTapped(gesture:)))
//        todayRecommendationView.addGestureRecognizer(tapGesture)
//        todayRecommendationView.isUserInteractionEnabled = true
    }
    @IBAction func imageTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "goToOverview", sender: self)

        }
    }

//    @objc func imageTapped(gesture: UIGestureRecognizer) {
//         // if the tapped view is a UIImageView then set it to imageview
//         if (gesture.view as? UIImageView) != nil {
//             print("Image Tapped")
//
//         }
//
//    }


