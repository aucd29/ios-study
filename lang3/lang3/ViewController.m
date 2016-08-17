//
//  ViewController.m
//  lang3
//
//  Created by 최철동 on 2016. 7. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString* str = NSLocalizedString(@"test", @"test");
    NSLog(@"=====================================");
    NSLog(@"%@", str);
    NSLog(@"=====================================");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
