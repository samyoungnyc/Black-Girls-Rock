//
//  SegmentHeaderView.swift
//  Black Girls Rock
//
//  Created by Computer on 3/17/16.
//  Copyright © 2016 Computer. All rights reserved.
//

import UIKit


class SegmentHeaderView: UICollectionReusableView {

    @IBOutlet weak var segmentedControl: UISegmentedControl!

        override init(frame: CGRect) {
            super.init(frame: frame)
            self.segmentedInit()
        }
        
        

        required init(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)!
            self.segmentedInit()
        }
        
        func segmentedInit() {

            print("segmentview")
        }
}
