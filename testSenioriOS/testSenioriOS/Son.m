//
//  Son.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/3/7.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "Son.h"

@implementation Son
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"S-Son=%@",NSStringFromClass([self class]));
        NSLog(@"S-Father=%@",NSStringFromClass([super class]));
    }
    return self;
}
@end
