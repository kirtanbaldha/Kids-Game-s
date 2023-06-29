//
//  towZaPage.swift
//  Kids Game's
//
//  Created by r85 on 26/06/23.
//

import UIKit
import AVFoundation


class colourPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let colors = ["green", "orange", "Sky Blue", "brown", "yellow", "orange", "red", "yellow", "Sky Blue", "black", "pink", "green"]

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
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForColour
        cell.imgForColour.image = UIImage(named: "\(colors[indexPath.row])")
      
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let speechUtterance = AVSpeechUtterance(string: colors[indexPath.row]) // Customize the welcome message as desired
        synthesizer.speak(speechUtterance)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
            return CGSize(width: 165, height: 148)
        }
    

    
}
