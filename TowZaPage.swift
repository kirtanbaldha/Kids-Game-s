//
//  TowZaPage.swift
//  Kids Game's
//
//  Created by r85 on 27/06/23.
//

import UIKit
import AVFoundation


class TowZaPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let multiPlicationTabel = [
        "1.1", "1.2", "1.3", "1.4", "1.5", "1.6", "1.7", "1.8", "1.9", "1.10","",
        "2.1", "2.2", "2.3", "2.4", "2.5", "2.6", "2.7", "2.8", "2.9", "2.10","",
        "3.1", "3.2", "3.3", "3.4", "3.5", "3.6", "3.7", "3.8", "3.9", "3.10","",
        "4.1", "4.2", "4.3", "4.4", "4.5", "4.6", "4.7", "4.8", "4.9", "4.10","",
        "5.1", "5.2", "5.3", "5.4", "5.5", "5.6", "5.7", "5.8", "5.9", "5.10"
    ]
    let voiceMultiPlicationTabel = ["one one's are one", "one two's are two", "one three's are three", "one four's are four"," one five's are five", "one six's are six", "one seven's are seven", "one eight's are eight", "one nine's are nine", "one ten's are ten","","two one's are two"," two two's are four", "two three's are six", "two four's are eight", "two five's are ten", "two six's are twelve"," two seven's are fourteen"," two eight's are sixteen", "two nine's are eighteen", "two ten's are twenty","","three one's are three", "three two's are six", "three three's are nine", "three four's are twelve", "three five's are fifteen", "three six's are eighteen"," three seven's are twenty-one"," three eight's are twenty-four"," three nine's are twenty-seven"," three ten's are thirty","","four one's are four", "four two's are eight", "four three's are twelve", "four four's are sixteen"," four five's are twenty"," four six's are twenty-four", "four seven's are twenty-eight", "four eight's are thirty-two", "four nine's are thirty-six", "four ten's are forty","","five one's are five", "five two's are ten", "five three's are fifteen"," five four's are twenty", "five five's are twenty-five", "five six's are thirty"," five seven's are thirty-five"," five eight's are forty", "five nine's are forty-five", "five ten's are fifty"]
    

    @IBOutlet weak var cv: UICollectionView!
    var synthesizer: AVSpeechSynthesizer!

    override func viewDidLoad() {
        super.viewDidLoad()

        synthesizer = AVSpeechSynthesizer()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return multiPlicationTabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellFormultiPlicationTabel
        cell.imgFormultiPlicationTabel.image = UIImage(named: "\(multiPlicationTabel[indexPath.row])")
      
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let speechUtterance = AVSpeechUtterance(string: voiceMultiPlicationTabel[indexPath.row]) // Customize the welcome message as desired
        synthesizer.speak(speechUtterance)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
            return CGSize(width: 334, height: 75)
        }
    

}
