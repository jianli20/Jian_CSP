//
//  Creativity.swift
//  Jian_CSP
//
//  Created by Li, Jian Hong on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
//Mark: - Class type should inherit from UICollectionViewControllr
public class Creativity: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "javaSample"),
            UIImage(named: "pingo"),
            UIImage(named: "fire"),
            UIImage(named: "water"),
            UIImage(named: "grass"),
            UIImage(named: "squishBall"),
            UIImage(named: "squishBall"),
            UIImage(named: "squishBall"),
            UIImage(named: "squishBall"),
            UIImage(named: "squishBall"),
            UIImage(named: "squishBall")
            ]
    }()

    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath] ()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
           collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at: indexPaths)
                })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                                          at: .centeredVertically,
                                                                          animated: true)
                }
            }
        }
    }
    
    //Mark: lifecycle methods
    override public func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //Mark:- UICollectionView methods
    
    override public func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    override public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    
    {
        return artSelection.count
    }
}
