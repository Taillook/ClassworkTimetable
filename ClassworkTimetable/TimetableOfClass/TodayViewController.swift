//
//  TodayViewController.swift
//  TimetableOfClass
//
//  Created by Taillook on 2017/05/20.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout , NCWidgetProviding {
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    let li = [["a", "b", "c", "d"], ["a", "b", "c", "d"], ["a", "b", "c", "d"], ["a", "b", "c", "d"], ["a", "b", "c", "d"]]
    let li2 = ["Science", "b", "c", "d", "b", "c", "d", "b", "c", "d", "a", "b", "c", "d", "b", "c", "d", "b", "c", "d"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: Int(CollectionView.bounds.width) / 5, height: Int(CollectionView.bounds.height) / 4)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        CollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 20
    }
    
    
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath) as UICollectionViewCell
        
        cell.backgroundColor = UIColor(red: CGFloat(drand48()),
                                       green: CGFloat(drand48()),
                                       blue: CGFloat(drand48()),
                                       alpha: 1.0)
        (cell.viewWithTag(1) as! UILabel).text = li2[0]
        return cell
    }
    
}
