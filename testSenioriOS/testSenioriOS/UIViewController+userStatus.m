//
//  UIViewController+userStatus.m
//  testSenioriOS
//
//  Created by alexYang on 2017/3/6.
//  Copyright © 2017年 alexYang. All rights reserved.
//

#import "UIViewController+userStatus.h"
#import "UIControl+userStatus.h"
#import "HookUtility.h"
#import "Aspects.h"

@implementation UIViewController (userStatus)
+(void)load{
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:) withOptions:AspectPositionBefore usingBlock:^(){
        //插入需要执行的代码
        NSLog(@"我在viewWillAppear执行前偷偷插入了一段代码%@",[self class]);
        
        // 不能干扰原来的代码流程，插入代码结束后要让本来该执行的代码继续执行
//        [self swiz_viewWillAppear:animated];
    }error:nil];
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        SEL originalViewWillAppear = @selector(viewWillAppear:);
//        SEL swizzledViewWillAppear= @selector(swiz_viewWillAppear:);
//        [HookUtility swizzlingInClass:[self class] originalSelector:originalViewWillAppear swizzledSelector:swizzledViewWillAppear];
//        
//        SEL o_viewWillDisappear = @selector(viewWillDisappear:);
//        SEL s_viewWillDisappear = @selector(swiz_viewWillDisappear:);
//        [HookUtility swizzlingInClass:[self class] originalSelector:o_viewWillDisappear swizzledSelector:s_viewWillDisappear];
//        
//    });
}

#pragma mark -- Method swizzling
- (void)swiz_viewWillAppear:(BOOL)animated
{
    //插入需要执行的代码
    NSLog(@"我在viewWillAppear执行前偷偷插入了一段代码%@",[self class]);
    
    // 不能干扰原来的代码流程，插入代码结束后要让本来该执行的代码继续执行
    [self swiz_viewWillAppear:animated];
}


- (void)swiz_viewWillDisappear:(BOOL)animated
{
    //插入需要执行的代码
    NSString *pageName=NSStringFromClass([self class]);
    
    NSLog(@"结束监听%@",pageName);
    //不能干扰原来的代码流程，插入代码结束后要让本来该执行的代码继续执行
    [self swiz_viewWillDisappear:animated];
}

@end
