//
//  firstPage.swift
//  Kids Game's
//
//  Created by r85 on 21/06/23.
//

import UIKit
import AVFoundation


class firstPage: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    
    
    @IBOutlet weak var BT: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let audioFilePath = Bundle.main.path(forResource: "background_music", ofType: "mp3") else {
            return
        }
        
    }
    
    
    @IBAction func PlayButton(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "secondPage") as! secondPage
        navigationController?.pushViewController(naviget, animated: true)
        
        
        
    }
    
    
    
    
}



