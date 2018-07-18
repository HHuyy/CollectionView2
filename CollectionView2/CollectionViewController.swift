//
//  CollectionViewController.swift
//  CollectionView2
//
//  Created by Đừng xóa on 7/14/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    let numbers = [Int](1...120)
    let WIDTH_SCREEN = UIScreen.main.bounds.width
    let padding: CGFloat = 8
    let numberOfItems: CGFloat = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        let itemSize = (WIDTH_SCREEN - padding * (numberOfItems + 1))/numberOfItems
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing = padding
        layout.minimumLineSpacing = padding
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.scrollDirection = .vertical
        collectionView?.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return numbers.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        cell.labelText.text = "\(numbers[indexPath.row])"
        return cell
    }

}
