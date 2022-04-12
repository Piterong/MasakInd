//
//  StepsViewController.swift
//  masakind
//
//  Created by Ganesh Ekatata Buana on 12/04/22.
//



        // Do any additional setup after loading the view.
    
    import UIKit
    import AVKit
    import AVFoundation

    class StepsViewController: UIViewController {

        @IBOutlet weak var playerButton: UIButton!
        @IBAction func pressPlayer(_ sender: UIButton) {
            playVideo()
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
        }

        private func playVideo() {
            guard let path = Bundle.main.path(forResource: "step 1 - clean", ofType:"mp4") else {
                debugPrint("video.m4v not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true) {
                player.play()
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


