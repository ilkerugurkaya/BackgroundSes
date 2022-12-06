//
//  ViewController.swift
//  Background Ses
//
//  Created by İlker Kaya on 2.12.2022.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var sesOynatici: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
        }catch{
            
        }
    }
    
    @IBAction func basla(_ sender: Any) {
        sesOynatici.play()
    }
    
    
    
    
    @IBAction func dur(_ sender: Any) {
        sesOynatici.stop()
    }
    


}

