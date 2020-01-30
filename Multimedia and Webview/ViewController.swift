//
//  ViewController.swift
//  Multimedia and Webview
//
//  Created by Rasyid Respati Wiriaatmaja on 30/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let source = Bundle.main.path(forResource: "music", ofType: "mp3")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: source!))
        } catch {
            print(error)
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func btnPlay(_ sender: UIButton) {
        
        audioPlayer?.play()
    }
    
    @IBAction func btnPause(_ sender: UIButton) {
        
        if audioPlayer!.isPlaying {
            audioPlayer?.pause()
        }
    }
    
    @IBAction func btnStop(_ sender: UIButton) {
        
        audioPlayer?.stop()
        audioPlayer?.currentTime = 0
    }
    
    @IBAction func btnVideo(_ sender: UIButton) {
        
        let source = Bundle.main.path(forResource: "androidcommercial", ofType: "3gp")
        
        let videoPlayer = AVPlayer(url: URL(fileURLWithPath: source!))
        
        let controller = AVPlayerViewController()
        controller.player = videoPlayer
        
        present(controller, animated: true){
            controller.player?.play()
        }
        
    }
    
    
}

