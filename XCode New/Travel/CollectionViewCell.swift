//
//  CollectionViewCell.swift
//  Travel
//
//  Created by Delvin on 25/04/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet var buttonBali: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        DispatchQueue.main.async {
            self.layer.shadowColor=UIColor.lightGray.cgColor
            self.layer.shadowOpacity=0.5
            self.layer.shadowOpacity=10
            self.layer.shadowOffset = .zero
            self.layer.shadowPath=UIBezierPath(rect: self.layer.bounds).cgPath
            self.layer.shouldRasterize=true
        }
    }
}
