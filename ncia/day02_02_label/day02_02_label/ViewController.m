//
//  ViewController.m
//  day02_02_label
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int x = 50;
    [self addLabel:@"year" posX:x posY:100 align:NSTextAlignmentRight];
    [self addLabel:@"month" posX:x posY:150 align:NSTextAlignmentRight];
    [self addLabel:@"day" posX:x posY:200 align:NSTextAlignmentRight];
    [self addLabel:@"ymd" posX:x posY:300 align:NSTextAlignmentRight];
    
    x = 170;
    mYear  = [self addTextField:@"2016" posX:x posY:100 align:NSTextAlignmentCenter];
    mMonth = [self addTextField:@"08" posX:x posY:150 align:NSTextAlignmentCenter];
    mDay   = [self addTextField:@"18" posX:x posY:200 align:NSTextAlignmentCenter];
    mYMD   = [self addTextField:@"" posX:x posY:300 align:NSTextAlignmentCenter];
    
}

- (void) addLabel: (NSString*) labelName posX:(int)x posY:(int)y align:(NSTextAlignment)al {
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(x, y, 100, 30)];
    label.text = labelName;
    label.textAlignment = al;
    
    [self.view addSubview:label];
}

- (UITextField*) addTextField: (NSString*) labelName posX:(int)x posY:(int)y align:(NSTextAlignment)al {
    UITextField* label = [[UITextField alloc] initWithFrame:CGRectMake(x, y, 100, 30)];
    label.text = labelName;
    label.textAlignment = al;
    
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor blackColor];
    label.layer.cornerRadius = 8;
    
    [self.view addSubview:label];
    
    return label;
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [mYear resignFirstResponder]; // 선택 하면 키보드가 사라지도록
//    [mMonth resignFirstResponder];
//    [mDay resignFirstResponder];
    
    [self.view endEditing:YES]; // 키보드 사라지게 하는걸 전역으로 처리
    
    mYMD.text = [NSString stringWithFormat:@"%@.%@.%@", mYear.text, mMonth.text, mDay.text];
    
    // clear ui text field
    mYear.text  = nil;
    mMonth.text = nil;
    mDay.text   = nil;
}

- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray* items = [mYMD.text componentsSeparatedByString:@"."];
    NSLog(@"%@", items);
    
    mYear.text  = items[0];
    mMonth.text = items[1];
    mDay.text   = items[2];
    
    mYMD.text = nil;
    
    NSLog(@"%@", [items componentsJoinedByString:@"**"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
