//
//  PhotoCollectionViewController.swift
//  Black Girls Rock
//
//  Created by Computer on 3/17/16.
//  Copyright © 2016 Computer. All rights reserved.
//

import UIKit


class PhotoCollectionViewController: UICollectionViewController {
    let reuseIdentifier = "photoCell"
    let headerViewIdentifier = "segmentHeader"
    
    var images: [String]!
    
    var photos = [String]()
    var videos = [String]()
    var musics = [String]()

    var returnedSegValue: Int!

    @IBOutlet var mainCollectionView: UICollectionView!
    @IBOutlet weak var musicTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize.width = self.view.frame.size.width
        
        returnedSegValue = 0
        
        musicTableView.hidden = true

        
        photos = [
            "city.jpg",
            "city1.jpg",
            "beach.jpg",
            "coast.jpg"
        ]
        
        videos = [
            "city.jpg",
            "city1.jpg",
            "beach.jpg"
        ]
        
        musics = [
            "city1.jpg",
            "beach.jpg"
        ]
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count: Int
        
        if returnedSegValue == 0 {
            count = photos.count
            return count
        } else if returnedSegValue == 1 {
            count = videos.count
            return count
        } else {
            count = musics.count
            return count
        }
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) ->  UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("photoCell", forIndexPath: indexPath) as! PhotoCollectionViewCell

        
        if returnedSegValue == 0 {
            let image = UIImage(named: photos[indexPath.row])
            cell.imageView.image = image

        } else  if returnedSegValue == 1 {
            let image = UIImage(named: videos[indexPath.row])
            cell.imageView.image = image
        } else {
            let image = UIImage(named: musics[indexPath.row])
            cell.imageView.image = image
        }
        
        return cell
    }

    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        let headerView: SegmentHeaderView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: headerViewIdentifier, forIndexPath: indexPath) as! SegmentHeaderView

        headerView.segmentedControl.userInteractionEnabled = true
        headerView.segmentedControl.addTarget(self, action: Selector("segmentAction:"), forControlEvents: .ValueChanged)
        return headerView

    }
    
    func segmentAction(sender: UISegmentedControl) {

        switch sender.selectedSegmentIndex {
        case 0:
            returnedSegValue = 0
            musicTableView.hidden = true
            self.images = self.photos
        case 1:
            returnedSegValue = 1
            musicTableView.hidden = true
            self.images = self.videos
        case 2:
            returnedSegValue = 2

            self.images = self.musics

        default:
            break
        }
        collectionView?.reloadData()
    }
    

    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
