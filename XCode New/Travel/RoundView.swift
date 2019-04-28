//
//  RoundButton.swift
//  Travel
//
//  Created by Delvin on 25/04/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

@IBDesignable class RoundedView: UIView{
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
        
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 15 : 0
    }
    
    func shadowBorder(){
        
    }
    
}

