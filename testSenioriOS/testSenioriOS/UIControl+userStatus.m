//
//  UIControl+userStatus.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/3/6.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "UIControl+userStatus.h"
#import "HookUtility.h"


@implementation UIControl (userStatus)
+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL originalSelector = @selector(sendAction:to:forEvent:);
        SEL swizzledSelector = @selector(swiz_sendAction:to:forEvent:);
        
        [HookUtility swizzlingInClass:[self class] originalSelector:originalSelector swizzledSelector:swizzledSelector];
    });
}

-(void)swiz_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    NSLog(@"\n***hook success.\n[1]action:%@\n[2]target:%@ \n[3]event:%ld", NSStringFromSelector(action), target, (long)event);
    
    [self swiz_sendAction:action to:target forEvent:event];
}

@end
