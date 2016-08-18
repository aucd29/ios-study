//
//  FadeOutView.h
//  day02_01_tableview
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FadeOutView : UIView
{
    UIImageView* mIv;
}

- (instancetype) initWithFrame:(CGRect)frame imgName:(NSString*) name;
- (void) setImageName: (NSString*) name;
@end
