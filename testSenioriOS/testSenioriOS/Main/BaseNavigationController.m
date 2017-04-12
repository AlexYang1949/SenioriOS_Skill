//
//  BaseNavigationController.m
//  FastPay
//
//  Created by William on 16/7/14.
//  Copyright © 2016年 顺维无限. All rights reserved.
//

#import "BaseNavigationController.h"
#import "YYCGUtilities.h"
#import "UIImage+YYAdd.h"
@implementation BaseNavigationController

+ (void)initialize
{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[BaseNavigationController class]]];
    UIImage * image = nil;
    image = [UIImage imageWithColor:[UIColor whiteColor] size:CGSizeMake(YYScreenSize().width, 88)];
    [navBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    NSDictionary *attr = @{NSFontAttributeName: [UIFont systemFontOfSize:16], NSForegroundColorAttributeName: [UIColor colorWithWhite:0.141 alpha:1.000]};
    [navBar setTitleTextAttributes:attr];
    [navBar setTintColor:[UIColor colorWithWhite:0.141 alpha:1.000]];
}


@end
