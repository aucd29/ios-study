//
//  PhotoSlider.swift
//  day02_05_photoSlider
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

import UIKit

class PhotoSlider: UIView {
    let scroll = UIScrollView();
//    var names: NSArray? = nil;
    let margin: CGFloat = 40;

    override init(frame: CGRect) {
        super.init(frame: frame);
        
        
//        scroll.frame = self.bounds;
        scroll.frame = CGRectMake(margin * -1, 0, frame.size.width + margin, frame.size.height);
        scroll.pagingEnabled = true // 페이지 처리
//        scroll.backgroundColor = UIColor.blackColor();
        scroll.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        self.addSubview(scroll);
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // func setImageNames(names: [String]) 으로 도 사용 가능
    func setImageNames(names: NSArray) {
//        self.names? = names;
        
        let cx = scroll.bounds.size.width;
        scroll.contentSize = CGSizeMake(cx * CGFloat(names.count), scroll.bounds.size.height);
        
        var frame = self.bounds;
        frame.origin.x = margin;
        
        for name in names {
            let iv = UIImageView(frame: frame);
            iv.contentMode = .ScaleAspectFit;
            iv.image = UIImage(named: name as! String);
            
            scroll.addSubview(iv);
//            frame.origin.x += frame.size.width;
            frame.origin.x += cx;
        }
    }
}
