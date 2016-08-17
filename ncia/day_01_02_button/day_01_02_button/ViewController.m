//
//  ViewController.m
//  day_01_02_button
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
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"self : %@", self);
    NSLog(@"self view : %@", self.view);
    
    // changed background color
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self addImage];
    [self addColorButton:50
                    btnY:100
                 bgColor:[UIColor cyanColor]
                btnTitle:@"Cyan2"
             btnSelector:@selector(onCyan:)];
    
    [self addColorButton:160
                    btnY:100
                 bgColor:[UIColor brownColor]
                btnTitle:@"Brown"
             btnSelector:@selector(onBrown:)];
    
    [self addColorButton:200
                    btnY:300
                 bgColor:nil
                btnTitle:@"Magic"
             btnSelector:@selector(onMagic:)];
}

- (void) addImage {
    UIImage* image = [UIImage imageNamed:@"1.jpg"];
    NSLog(@"image cls : %@", image);
    //    UIImageView* imgView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 300, 300, 300)];
    
    mImgView = [[UIImageView alloc] initWithFrame:self.view.frame];
    mImgView.image = image;
    
    [self.view insertSubview:mImgView atIndex:0];
}

- (void) addColorButton :(int) x
                             btnY:(int) y
                             bgColor:(UIColor*) color
                             btnTitle:(NSString*) title
                             btnSelector:(SEL) selector {
    int btnSize = 100;
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(x, y, btnSize, btnSize);
                                 
    if (color != nil) {
        btn.backgroundColor = color;
    }
    
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

//
// CALLBACK EVENTS
//

- (void) onCyan:(UIButton*) sender {
    NSLog(@"======= onCyan");
    NSLog(@"%@", [sender titleForState:UIControlStateNormal]);
    
    self.view.backgroundColor = [UIColor cyanColor];
}

- (void) onBrown:(UIButton*) sender {
    NSLog(@"======= onBrown");
    
    self.view.backgroundColor = [UIColor brownColor];
}

- (void) onMagic:(UIButton*) sender {
    NSLog(@"======= onMagic");
    
//    mImgView.hidden = !mImgView.hidden;
    
    [UIView animateWithDuration:0.5 animations:^{
//        mImgView.alpha = !mImgView.alpha;
//        mImgView.alpha = 0.5f;
        
        if (mImgView.frame.origin.x == 0) {
//            mImgView.frame = CGRectMake(300, 300, 100, 100);
//            mImgView.frame.origin.x = 500; // this is not work
            
            // horizontal transition
            CGRect rect = mImgView.frame;
            rect.origin.x = rect.size.width; // frame 을 직접 access 할 수 없기 때문에
            mImgView.frame = rect;
            
        } else {
            mImgView.frame = self.view.frame;
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
