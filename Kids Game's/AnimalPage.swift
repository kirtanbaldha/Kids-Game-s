//
//  AnimalPage.swift
//  Kids Game's
//
//  Created by r85 on 28/06/23.
//

import UIKit
import AVFoundation


class AnimalPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  {
    
    var synthesizer: AVSpeechSynthesizer!

    let pageControl = UIPageControl()
        let numberOfPages = 7

    var animal = ["Crocodile","Panda","Zebra","lion","elephant","Cheetah","monkey","tiger"]
    var animalname = ["Crocodile name","Panda name","Zebra name","lion name","elephant name","Cheetah name","monkey name","tiger name"]
    
    @IBOutlet weak var mypageControl: UIPageControl!
    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        synthesizer = AVSpeechSynthesizer()

    }
    
  
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animal.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForAnimal
        cell.imgForAnimal.image = UIImage(named: "\(animal[indexPath.row])")
        cell.labelForAnimal.image = UIImage(named: "\(animalname[indexPath.row])")
      
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let speechUtterance = AVSpeechUtterance(string: animal[indexPath.row]) // Customize the welcome message as desired
        synthesizer.speak(speechUtterance)
    }

    

}
