//
//  UIViewController+Category.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/3/24.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "UIViewController+Category.h"

@implementation UIViewController (Category)
- (void)pushSBViewControllerID:(NSString *)vcId sbName:(NSString *)sbName  animated:(BOOL)animated{
    [self.navigationController pushViewController:[[UIStoryboard storyboardWithName:sbName bundle:nil] instantiateViewControllerWithIdentifier:vcId] animated:YES];
    
}
@end
