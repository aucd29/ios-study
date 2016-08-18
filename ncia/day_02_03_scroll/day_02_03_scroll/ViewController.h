//
//  ViewController.h
//  day_02_03_scroll
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScaleView.h"

@interface ViewController : UIViewController
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    ScaleView* mImg;
}

@end

