//
//  main.m
//  objc4_debug
//
//  Created by Leung on 27/07/2020.
//

#import <Foundation/Foundation.h>

#import <objc/runtime.h>
#import <objc/message.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Class newClass = objc_allocateClassPair(objc_getClass("NSObject"), "newClass", 0);
                objc_registerClassPair(newClass);
        id newObject = [[newClass alloc]init];
        NSLog(@"%@",newObject);
        NSLog(@"NO PAY NO GAIN");
    }
    return 0;
}
