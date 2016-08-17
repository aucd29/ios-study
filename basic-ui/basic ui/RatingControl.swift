//
//  RatingControl.swift
//  basic ui
//
//  Created by 최철동 on 2016. 7. 13..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    var rating = 0
    var ratingButtons = [UIButton]()
    
    
    // MARK: Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<5 {
            let btn = UIButton(frame: CGRect(x:0, y:0, width:44, height:44))
            
            btn.backgroundColor = UIColor.redColor()
            btn.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
            
            ratingButtons += [btn]
            
            addSubview(btn)
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        
        return CGSize(width: 240, height: 44)
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        rating = ratingButtons.indexOf(button)! + 1
        
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index, button) in ratingButtons.enumerate() {
            // if the index of a button is less than the rating, that button should be selected.
            
            button.selected = index < rating
        }
    }

}
