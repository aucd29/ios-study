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
        
        mIv = [[UIImageView alloc] initWithFrame:self.bounds];
        
        [self addSubview:mIv];
    }
    
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame imgName:(NSString*) name {
    if (self == [super initWithFrame:frame]) {
        mIv = [[UIImageView alloc] initWithFrame:self.bounds];
        [self setImageName:name];
        
        [self addSubview:mIv];
    }
    
    return self;
}

- (void) setImageName: (NSString*) name {
//    self.backgroundColor = [UIColor orangeColor];
    
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
    
    // 이런식으로도 쓸 수도 있음 -_ -; 물론 거지 같은 방법이지만 ㅎ
//    [self performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.5];
    
}
@end
