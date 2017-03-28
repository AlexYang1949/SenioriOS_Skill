//
//  HookUtility.h
//  testSenioriOS
//
//  Created by alexYang on 2017/3/6.
//  Copyright © 2017年 alexYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HookUtility : NSObject
+ (void)swizzlingInClass:(Class)cls originalSelector:(SEL)originalSelector swizzledSelector:(SEL)swizzledSelector;
@end
