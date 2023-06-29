//
//  secondPage.swift
//  Kids Game's
//
//  Created by r85 on 22/06/23.
//

import UIKit

class secondPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 
   var AllButton = ["alphabet","number","colour","table","animals"]
    
    
    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AllButton.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellForSecondPage1
        cell.imgForsecondPage.image = UIImage(named: "\(AllButton[indexPath.row])")
      
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "ABCDpage") as! ABCDpage
                    navigationController?.pushViewController(naviget, animated: true)
                }
        else if indexPath.row == 1{
            let naviget = storyboard?.instantiateViewController(withIdentifier: "numberPage") as! numberPage
                    navigationController?.pushViewController(naviget, animated: true)
        }
        else if indexPath.row == 2 {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "colourPage") as! colourPage
                    navigationController?.pushViewController(naviget, animated: true)
        }
        else if indexPath.row == 3 {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "TowZaPage") as! TowZaPage
                    navigationController?.pushViewController(naviget, animated: true)
        }
        else {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "AnimalPage") as! AnimalPage
                    navigationController?.pushViewController(naviget, animated: true)
        }

        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
            return CGSize(width: 343, height: 80)
        }
    
    
    

    
}
