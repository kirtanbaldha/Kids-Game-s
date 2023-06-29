//
//  ABCDpage.swift
//  Kids Game's
//
//  Created by r85 on 22/06/23.
//

import UIKit
import AVFoundation


class ABCDpage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var arrayForABCD = ["A","","","B","C","","","D","E","","","F","G","","","H","I","","","J","K","","","L","M","","","N","O","","","P","Q","","","R","S","","","T","U","","","V","W","","","X","Y","","","Z"]
    
    var voiceABC = ["a for airoplan","","", "b for balloon", "c for cat","","","d for dog", "e for elephant","","", "f for fish", "g for got","","", "h for hen", "i for ice cream","","", "j for Jam", "k for key","","", "l for lamp", "m for mouse","","", "n for nest", "o for orange","","", "p for penguin", "q for qulail", "","","r for rabbit", "s for snake","", "","t for tortoise", "u for umbrella","", "","v for van", "w for watch", "","","x for xylophone","y for yak","","","z for zebra"]
    
    var synthesizer: AVSpeechSynthesizer!
   
    
    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        synthesizer = AVSpeechSynthesizer()
    }
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayForABCD.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForABCDpage
        cell.imgForABCD.image = UIImage(named: "\(arrayForABCD[indexPath.row])")
      
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       

        var speechUtterance = AVSpeechUtterance(string: voiceABC[indexPath.row]) // Customize the welcome message as desired
        synthesizer.speak(speechUtterance)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
            return CGSize(width: 145, height: 135)
        }
    
}
