//
//  MyClass.m
//  day_01_01_basic_objc
//
//  Created by 최철동 on 2016. 8. 17..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import "MyClass.h"

static int gCount = 0;

@implementation MyClass

-(instancetype) init {
    // this == self
    // parent = super == NSObject
    if (self = [super init]) {
        ++gCount;
    }
    
    return self;
}

- (int) value {
    return mValue;
}

- (int) getValue {
    return mValue;
}

- (void) setValue:(int)value {
    mValue = value;
}

+ (void) print:(MyClass *)s {
    NSLog(@"cls print : %d\n", [s value]);
}

+ (int) getCountClass2 {
    return gCount;
}

+ (int) plus: (int) a :(int) b {
    return a + b;
}


+ (int) plus2a:(int)a b:(int)b {
    return a + b;
}

@end

int getCountClass() {
    return 7;
}