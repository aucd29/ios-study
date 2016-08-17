//
//  ViewController.m
//  day01_03_picker
//
//  Created by 최철동 on 2016. 8. 17..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray* a1 = [NSArray arrayWithObjects:@"RED", @"GREEN", @"BLUE", nil];
    NSArray* a2 = @[@"RED", @"GREEN", @"BLUE"];
    NSArray* a3 = @[@[@"RED", [UIColor redColor]],
                    @[@"GREEN", [UIColor greenColor]],
                    @[@"BLUE", [UIColor blueColor]]
                    ];

    NSLog(@"%@, %@, %@", a1, a2, a2[0]);
    for (NSString* value in a2) {
        NSLog(@"%@", value);
    }

    // init value
    mNames  = a2;
    mColors = @[[UIColor redColor], [UIColor greenColor], [UIColor blueColor]];
    
    for (int i=0; i<mNames.count; ++i) {
        mPairs[i] = @[mNames[i], mColors[i]];
    }
    
    self.view.backgroundColor = [UIColor redColor];
    
    [self printArray:a2];
    [self makePickerView];
}

- (void) printArray : (NSArray*) arr {
    for (NSString* value in arr) {
        NSLog(@"method - %@", value);
    }
}

- (void) makePickerView {
    mPicker = [[UIPickerView alloc] initWithFrame:CGRectMake(50, 200, 300, 300)];
    mPicker.backgroundColor = [UIColor cyanColor];
    mPicker.dataSource = self;
    mPicker.delegate = self;
    
    [self.view addSubview:mPicker];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


//
// PickerViewSource protocols
//

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2; // data type is 1
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return mNames.count;
}

//
// PickerViewDelegate
//

- (nullable NSString *)pickerView:(UIPickerView *)pickerView
                      titleForRow:(NSInteger)row
                     forComponent:(NSInteger)component {
    return mNames[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    UIColor* bgColor, * pcBgColor;
    
    if (component == 0) {
//        switch (row) {
//            case 0:  bgColor = [UIColor redColor];    break;
//            case 1:  bgColor = [UIColor greenColor];  break;
//            case 2:  bgColor = [UIColor blueColor];   break;
//            default: bgColor = [UIColor redColor];    break;
//        }
        
        bgColor = mColors[row];

    } else {
//        switch (row) {
//            case 0:  pcBgColor = [UIColor redColor];    break;
//            case 1:  pcBgColor = [UIColor greenColor];  break;
//            case 2:  pcBgColor = [UIColor blueColor];   break;
//            default: pcBgColor = [UIColor redColor];    break;
//        }
        
        pcBgColor = mColors[row];
    }
    
    self.view.backgroundColor = bgColor;
//    mPicker.backgroundColor = pcBgColor;
};


// model == data
// view == view
// controller = model & view control



@end
