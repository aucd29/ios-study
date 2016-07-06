//
//  ViewController.m
//  HelloWorld
//
//  Created by 최철동 on 2016. 7. 6..
//  Copyright © 2016년 최철동. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstAlert:(id)sender {
    NSLog(@"print log message");
    
    UIAlertController* alert = [UIAlertController
                                alertControllerWithTitle:@"TITLE"
                                message:@"Welcome to iOS"
                                preferredStyle:UIAlertControllerStyleAlert
                                ];
    
    UIAlertAction* positive = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^ (UIAlertAction* action) {
                                   NSLog(@"Clicked OK");
                                   [alert dismissViewControllerAnimated:YES completion:nil];
                               }];
    
    UIAlertAction* negative = [UIAlertAction
                               actionWithTitle:@"Cancel"
                               style:UIAlertActionStyleCancel
                               handler:^ (UIAlertAction* action) {
                                   NSLog(@"Clicked Cancel");
                                   [alert dismissViewControllerAnimated:YES completion:nil];
                               }];
    
    [alert addAction:positive];
    [alert addAction:negative];
    
    [self presentViewController:alert animated:YES completion:nil];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        <#code to be executed after a specified delay#>
//    });
    
    //    [alert release];
}
- (IBAction)exit:(id)sender {
    // -_-???
    exit(0);
}

@end
