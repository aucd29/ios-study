//
//  ViewController.h
//  day01_03_picker
//
//  Created by 최철동 on 2016. 8. 17..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSArray* mNames;
    NSArray* mColors;
    NSArray* mPairs;
    
    UIPickerView* mPicker;
}


@end



// protocol == interface 