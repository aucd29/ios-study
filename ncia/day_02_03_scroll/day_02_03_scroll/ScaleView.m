//
//  ScaleView.m
//  day_02_03_scroll
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import "ScaleView.h"

@implementation ScaleView

- (instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIScrollView* scroll = [[UIScrollView alloc] initWithFrame:self.bounds];
        
        
        scroll.delegate = self;
        scroll.minimumZoomScale = 0.1;
        scroll.maximumZoomScale = 10;
        
        [self addSubview:scroll];
        
        
        mImg = [[UIImageView alloc] initWithFrame:self.bounds];
        mImg.contentMode = UIViewContentModeScaleAspectFit; // 원본 형태로
//        mImg.contentMode = UIViewContentModeScaleToFill; // default option
//        mImg.contentMode = UIViewContentModeCenter; // center 는 확대 축소 되지 않고 가운데에 배치 한다.
     
        [scroll addSubview: mImg];
        
        mLabel = [[UILabel alloc] initWithFrame:self.bounds];
        mLabel.text = @"iPhone";
        mLabel.textAlignment = NSTextAlignmentCenter;
        
        [mImg addSubview:mLabel];
    }
    
    
    
    return self;
}

- (void) setImage: (UIImage*) img {
    mImg.image = img;
}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return mImg;
}
@end
