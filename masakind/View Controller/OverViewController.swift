//
//  OverViewController.swift
//  masakind
//
//  Created by Piter Wongso on 10/04/22.
//

import UIKit

class OverViewController: UIViewController {

    @IBOutlet weak var estimatedTime: UIView!
    @IBOutlet weak var amountOfServings: UIView!
 
    @IBOutlet weak var estimatedTimeText: UILabel!
    @IBOutlet weak var amountOfServingsText: UILabel!
    
    var isFavourite = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        estimatedTime.layer.cornerRadius = 13
        amountOfServings.layer.cornerRadius = 13
        createButton()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "GANTI KE LIBRARY RESEP"

    }
    func createButton () {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "heart"),
            style: .done,
            target: self,
            action: #selector(heartTapped(sender:))

        )
    }
    @objc func heartTapped (sender: UIBarButtonItem){
        if isFavourite{
            navigationItem.rightBarButtonItem!.image = UIImage(systemName: "heart")
            isFavourite = false
        }else {
            navigationItem.rightBarButtonItem!.image = UIImage(systemName: "heart.fill")
            isFavourite = true
        }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



