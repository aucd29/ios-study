//
//  FadeOutView.m
//  day02_01_tableview
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import "FadeOutView.h"

@implementation FadeOutView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype) initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        mIv = [[UIImageView alloc] initWithFrame:frame];
        
        [self addSubview:mIv];
    }
    
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame imgName:(NSString*) name {
    if (self == [super initWithFrame:frame]) {
        mIv = [[UIImageView alloc] initWithFrame:frame];
        [self setImageName:name];
        
        [self addSubview:mIv];
    }
    
    return self;
}

- (void) setImageName: (NSString*) name {
    UIImage* img = [UIImage imageNamed:name];
    mIv.alpha = 0;
    mIv.image = img;
    
    [UIView animateWithDuration:0.5 animations:^{
        mIv.alpha = 1;
    }];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"=== touch began");
    
    [UIView animateWithDuration:0.5 animations:^{
        mIv.alpha = 0;

    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
    
}
@end
