//
//  ViewController.m
//  day_02_03_scroll
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
    
    int cx = self.view.bounds.size.width - 10;
    int cy = self.view.bounds.size.height;
    
    CGRect frame = CGRectMake(5, cy-cx-5, cx-5, cx-10);
    mImg = [[ScaleView alloc] initWithFrame:frame];
    mImg.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:mImg];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIImagePickerController* ipc = [[UIImagePickerController alloc] init];
    ipc.delegate = self;
    ipc.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:ipc animated:YES completion:nil];
}


// id == unknown type == void*
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    NSLog(@"==== did finished");
    NSLog(@"==== %@", info);
    
    [mImg setImage:info[UIImagePickerControllerOriginalImage]];
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    NSLog(@"==== cancel");
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
