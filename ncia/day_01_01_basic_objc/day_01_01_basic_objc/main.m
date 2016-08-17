//
//  main.m
//  day_01_01_basic_objc
//
//  Created by 최철동 on 2016. 8. 17..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    // TODO
    printf("hello world\n");
    NSLog(@"hello jobs");
    
    
    // new MyClass == [[MyClass alloc] init]
    // [] 이 function call 에 의미라고 함
    // alloc == memory 할당
    // init == constructor call ?
    MyClass* cls = [[MyClass alloc] init];
    NSLog(@"obj   : %@", cls);
    NSLog(@"value : %d", [cls value]);
    [cls setValue:3];
    
    NSLog(@"value : %d", cls.value);
    NSLog(@"value : %d", cls.getValue);
    
    NSLog(@"=================================");
    NSLog(@"cls count : %d", [MyClass getCountClass2]);
    
    MyClass* cls2 = [[MyClass alloc] init];
    NSLog(@"cls count : %d", [MyClass getCountClass2]);
    NSLog(@"=================================");
    
    NSLog(@"plus : %d", [MyClass plus: 3: 4]);
    NSLog(@"plus2 : %d", [MyClass plus :3 :4]);
    
    [MyClass print:cls];
    
    
    return 0;
}
