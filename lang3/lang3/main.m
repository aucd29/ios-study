//
//  main.m
//  lang3
//
//  Created by 최철동 on 2016. 7. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];

    NSString *lang = [[NSLocale preferredLanguages] objectAtIndex:0];
    NSLog(@"%@", lang);
    
    if (![lang isEqualToString:@"en"] && ![lang isEqualToString:@"ko"]) {
        
    }
    
//    if (![lang isEqualToString:@"en"]  &&  ![lang isEqualToString:@"ko"]){
//        NSMutableArray *array = [[NSMutableArray alloc] initWithArray:[NSLocale preferredLanguages]];
//        [array replaceObjectAtIndex:1 withObject:@"ko"];
//        
//        [[NSUserDefaults standardUserDefaults] setObject:array forKey:@"AppleLanguages"];
//        [[NSUserDefaults standardUserDefaults] synchronize];
//    }
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
