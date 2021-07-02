//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by Md Maruf Prodhan on 19/6/21.
//

import UIKit

class ExploreViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    let manager = ExploreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   let manager = ExploreDataManager()
        manager.fetch()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExploreCell", for: indexPath) as! ExploreCell
        let item  = manager.explore(at: indexPath)
        cell.IBName.text = item.name
        cell.imgExplore.image = UIImage(named: item.image)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return headerView
    }
  
  
    @IBAction func unwindLocationCancel(segue:UIStoryboardSegue) {
        
    }
}
