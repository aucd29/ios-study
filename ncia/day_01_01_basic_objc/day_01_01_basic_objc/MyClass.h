//
//  MyClass.h
//  day_01_01_basic_objc
//
//  Created by 최철동 on 2016. 8. 17..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    int mValue;
}

- (int) value;
- (int) getValue;
- (void) setValue:(int) value;

// + 는 static 과 같은 개념
+ (void) print: (MyClass *) s;
+ (int) getCountClass2;
+ (int) plus: (int) a :(int) b;

@end

int getCountClass();