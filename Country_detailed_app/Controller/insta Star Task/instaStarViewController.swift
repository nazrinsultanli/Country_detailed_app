//
//  instaStarViewController.swift
//  Country_detailed_app
//
//  Created by Nazrin Sultanlı on 25.09.23.
//

import UIKit

class instaStarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    let shekiller = ["bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas","bahamas"]


    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        shekiller.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mycell = collectionView.dequeueReusableCell(withReuseIdentifier: "instaStarCollectionViewCell", for: indexPath) as! instaStarCollectionViewCell
        mycell.imageView.image = UIImage(named: shekiller[indexPath.item])
        
        return mycell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width/3-1, height: collectionView.frame.width/3-1)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
