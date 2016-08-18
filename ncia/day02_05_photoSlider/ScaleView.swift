//
//  ScaleView.swift
//  day_02_04_scrollview_swift
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

import UIKit

class ScaleView: UIView, UIScrollViewDelegate {
    
    // let 은 상수 , var 은 일반 변수
    var mIv: UIImageView? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        let scroll = UIScrollView(frame: self.bounds)
        scroll.delegate = self
        scroll.minimumZoomScale = 0.1
        scroll.maximumZoomScale = 10
        
        self.addSubview(scroll)
        
        mIv = UIImageView(frame: self.bounds)
//        mIv?.contentMode = UIViewContentMode.UIViewContentModeScaleAspectFit
        mIv?.contentMode = UIViewContentMode.ScaleAspectFit
        scroll.addSubview(mIv!)
        
//        self.addSubview(mIv!) // ! 는 force (강제성 nil 일 수도 있기 때문에)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init (coder:) has not been implemeted")
    }
    
    func setImage(image: UIImage) {
        mIv?.image = image;
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        
        return mIv;
    }
}
